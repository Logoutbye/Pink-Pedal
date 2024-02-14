import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Routes/routess.dart';


import 'package:liveproject/utilis/Themesdata/theme_light.dart';
import 'package:liveproject/view/driver_side_screens/deriver_info/deriver_basic_info.dart';
import 'package:liveproject/view/driver_side_screens/ride_detail_screens/bottom_navigation.dart';
import 'package:liveproject/view/driver_side_screens/vehicle_info/vehicle_basic_info.dart';
import 'package:liveproject/view/driver_side_screens/vehicle_info/vehicle_info_detail.dart';




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
      initialRoute: RoutesName.userSplash,
      onGenerateRoute: Routes.generateRoute,
     
//  home: TodayAppurtunitie,
    );
  }
}
