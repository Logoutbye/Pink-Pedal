import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Routes/routess.dart';
import 'package:liveproject/view/DeriverSides_Screens/SplashScreen.dart';

import 'package:liveproject/view/DeriverSides_Screens/deriverRegisteration.dart';

import 'package:liveproject/utilis/Themesdata/theme_light.dart';
import 'package:liveproject/view/DeriverSides_Screens/deriver_basic_info.dart';
import 'package:liveproject/view/RIderSises_Screens/splash/onboarding_screens/firstscreen.dart';
import 'package:liveproject/view/RIderSises_Screens/splash/onboarding_screens/logopage.dart';



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
      // initialRoute: RoutesName.userSplash,
      // onGenerateRoute: Routes.generateRoute,
     
 home: BasicInfo(),
    );
  }
}
