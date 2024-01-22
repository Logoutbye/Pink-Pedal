import 'package:flutter/material.dart';

class Themetext{
  Themetext._();
  static TextTheme text_theme =  TextTheme(
    bodyLarge: TextStyle(
      fontFamily:  'plusjakartasans',
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Color(0xFF272B3B),
    ),
        bodyMedium: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
      fontFamily: 'poppins',
      color: Color(0xFFCCDCFF),
    ),
      bodySmall: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
      fontFamily: 'poppins',
      color: Color(0xFF03008B),
    ),
     displayMedium:  TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
      fontFamily: 'poppins',
      color: Color(0xFFCA4AB),
),
    );
    static  TextStyle atextstyle=  TextStyle(
      fontFamily: 'poppins',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xFF000000),
    );
      static const TextStyle btextstyle=  TextStyle(
      fontFamily: 'inter',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xFF9E9E9E),
    );
    static const TextStyle ctextstyle=TextStyle(
       fontFamily: 'poppins',
           fontSize: 14.0,
          fontWeight: FontWeight.w500,
      color: Color(0xFFFFFFFF),

    );
      static const TextStyle Dtextstyle=TextStyle(
       fontFamily: 'poppins',
           fontSize: 16.0,
          fontWeight: FontWeight.w600,
      color: Color(0xFF000000),

    );
       static const TextStyle Etextstyle=TextStyle(
       fontFamily: 'nunito',
           fontSize: 14.0,
          fontWeight: FontWeight.w700,
      color: Color(0xFF000000),

    );
 

  

}