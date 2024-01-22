import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';

class Themelight{
  Themelight._();

  static ThemeData light_theme=ThemeData(
    scaffoldBackgroundColor: Color(0xFFfefefe),
    appBarTheme: appbar_theme,
    textTheme: Themetext.text_theme,
    useMaterial3: true,
    elevatedButtonTheme: elevatedbuttontheme,
  );
  static AppBarTheme appbar_theme=AppBarTheme(
backgroundColor: Themecolor.appBarcolor,
titleTextStyle: TextStyle(
  color: Colors.white
)
  );
  static ElevatedButtonThemeData elevatedbuttontheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: Themecolor.elvatedbutton_color,
    padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    minimumSize: Size(327.0, 56.0),
  ),
);

}