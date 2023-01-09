import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:newspaper/Screens/BengaliPapers.dart';
import 'package:newspaper/Screens/FirstScreen.dart';
import 'package:newspaper/Screens/ContentScreen.dart';
import 'package:newspaper/Screens/Newspaper.dart';
import 'package:newspaper/SplashScreen/SplashScreen.dart';
import 'package:newspaper/utils/ThemeService.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeServices = await ThemeServices.instance;
  MobileAds.instance.initialize();

  var initTheme = themeServices.initial;


  runApp(MyApp(theme: initTheme,));
}

class MyApp extends StatelessWidget {
  
  MyApp({ required this.theme});

  final ThemeData theme;




  @override
  Widget build(BuildContext context){
    return ThemeProvider(initTheme: theme,
    builder: (_,theme)
    {
     return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: theme  ,
      home:SplashScreen(),
     
     routes: {
      "Content":(_)=> ContentScreen(),
      "Bengali":(_)=> BengaliPaper(),
      
     },
    );
    },);
    
  }
}