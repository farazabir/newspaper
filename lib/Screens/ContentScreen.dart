import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/adSystem/admobServices.dart';
import 'package:newspaper/utils/paperList/BengaliNewspaper.dart';
import 'package:newspaper/utils/paperList/InternationalNews.dart';
import 'package:newspaper/utils/ThemeService.dart';
import "package:google_mobile_ads/google_mobile_ads.dart";
import 'dart:io';

class ContentScreen extends StatefulWidget {


  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
 

   BannerAd? _bannerAd;

  

  @override
  void initState(){
    super.initState();

    _createBannerAd();
   
  }

  void _createBannerAd(){
    _bannerAd = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: AdMobService.bannerAdUnitId,
      listener: AdMobService.bannerAdListener,
      request: const AdRequest(),
    )..load();
  }

  @override
  Widget build(BuildContext context) {
   
    return ThemeSwitchingArea(child:
    Scaffold(
      
      body: SafeArea(child: RawScrollbar(
        thumbColor: Colors.black,
        isAlwaysShown: true,
        thickness: 2,
         radius: Radius.circular(20),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("NewsPaper Bd",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ThemeSwitcher(builder: (context){
                  bool isDarkMode = ThemeModelInheritedNotifier.of(context).theme.brightness == Brightness.light;
                  String themeName = isDarkMode ? 'dark': 'light';
                  return DayNightSwitcherIcon(isDarkModeEnabled: isDarkMode,onStateChanged: (bool darkMode) async{
                    var service = await  ThemeServices.instance..save(darkMode?'light':'dark');
                    var theme = service.getByName(themeName);
                    ThemeSwitcher.of(context).changeTheme(theme: theme,isReversed: darkMode);
                  },);
                }),
              )
            ],
          ),
          internationalNews(),
          SizedBox(height: 40,),
          BengaliNewspaper(),
        ],),
      ),
      ),
      bottomNavigationBar: _bannerAd ==null ?Container():
      Container(
        margin: EdgeInsets.only(bottom: 12),
        height: 52,
        child: AdWidget(ad: _bannerAd!),
      )
      
      ,
      
    )
    );
  }
}
