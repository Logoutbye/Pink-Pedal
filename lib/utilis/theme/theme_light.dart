import 'package:flutter/material.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';

class Themelight{
  Themelight._();

  static ThemeData light_theme=ThemeData(
    scaffoldBackgroundColor: const Color(0xFFfefefe),
    appBarTheme: appbar_theme,
    textTheme: Themetext.text_theme,
    useMaterial3: true,
    elevatedButtonTheme: elevatedbuttontheme,
  );
  static AppBarTheme appbar_theme=const AppBarTheme(
backgroundColor: Themecolor.appBar,
titleTextStyle: TextStyle(
  color: Colors.white
)
  );
  static ElevatedButtonThemeData elevatedbuttontheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: Themecolor.elvatedButton,
    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    minimumSize: const Size(327.0, 56.0),
  
  ),
);

}