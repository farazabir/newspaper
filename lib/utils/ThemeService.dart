import 'package:flutter/material.dart';

import 'ThemeConfig.dart';

import 'package:shared_preferences/shared_preferences.dart';


class ThemeServices{
  ThemeServices._();

  static late SharedPreferences prefs;

  static ThemeServices? _instance;

  static Future<ThemeServices> get instance async{

    if(_instance == null){
      prefs = await SharedPreferences.getInstance();
      _instance = ThemeServices._();
    }
    return _instance!;
  }
 
  final allThemes = <String,ThemeData>{
    'dark':darkTheme,
    'light':lightTheme,
  };
  get initial{
    String? themeName = prefs.getString("theme");
    if(themeName == null){
      final isDark = WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
      themeName = isDark? 'dark':"light";
    }
    return allThemes[themeName];
  }
  save(String newthemeName){
    prefs.setString("theme", newthemeName);
  }

  ThemeData getByName(String name){
    return allThemes[name]!;
  }
}