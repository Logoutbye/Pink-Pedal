import 'package:flutter/material.dart';

class Themetext {
  Themetext._();
  static final double smallSize = 12.0;
  static final double mediumeSize = 14.0;
 static final double largeSize = 18.0;
 static final double extraLargeSize = 24.0;
 static  TextTheme text_theme = TextTheme(
    bodyLarge: TextStyle(
      fontFamily: 'plusjakartasans',
      fontSize: extraLargeSize,
      fontWeight: FontWeight.w600,
      color: Color(0xFF272B3B),
    ),
    bodyMedium: TextStyle(
      fontSize: mediumeSize,
      fontWeight: FontWeight.w500,
      fontFamily: 'poppins',
      color: Color(0xFFCCDCFF),
    ),
    bodySmall: TextStyle(
      fontSize: mediumeSize,
      fontWeight: FontWeight.w400,
      fontFamily: 'poppins',
      color: Color(0xFF03008B),
    ),
    displayMedium: TextStyle(
      fontSize: mediumeSize,
      fontWeight: FontWeight.w500,
      fontFamily: 'poppins',
      color: Color(0xFFCA4AB),
    ),
  );
  static TextStyle atextstyle = TextStyle(
    fontFamily: 'poppins',
    fontSize: mediumeSize,
    fontWeight: FontWeight.w600,
    color: Color(0xFF000000),
  );
  static  TextStyle btextstyle = TextStyle(
    fontFamily: 'inter',
    fontSize: mediumeSize,
    fontWeight: FontWeight.w400,
    color: Color(0xFF9E9E9E),
  );
  static  TextStyle ctextstyle = TextStyle(
    fontFamily: 'poppins',
    fontSize: mediumeSize,
    fontWeight: FontWeight.w500,
    color: Color(0xFFFFFFFF),
  );
  static  TextStyle Dtextstyle = TextStyle(
    fontFamily: 'poppins',
    fontSize: largeSize,
    fontWeight: FontWeight.w600,
    color: Color(0xFF000000),
  );
  static TextStyle Etextstyle = TextStyle(
    fontFamily: 'nunito',
    fontSize: mediumeSize,
    fontWeight: FontWeight.w700,
    color: Color(0xFF000000),
  );
}
