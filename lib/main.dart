import 'package:flutter/material.dart';

import 'package:liveproject/utilis/Themesdata/theme_light.dart';

import 'package:liveproject/view/screens/booking_screeens/findRide_screen.dart';
import 'package:liveproject/view/screens/booking_screeens/review_screen.dart';

// import 'package:liveproject/screens/loginscreens/signinscreens.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themelight.light_theme,
      debugShowCheckedModeBanner: false,
      home: Reviewscreen(), // Changed 'signinscreen' to 'SigninScreen'
    );
  }
}
