import 'package:flutter/material.dart';
import 'package:liveproject/utilis/routes/routes_name.dart';
import 'package:liveproject/utilis/routes/routes.dart';
import 'package:liveproject/utilis/theme/theme_light.dart';
import 'package:liveproject/view/driver_screens/driver_detail_screens/Histories.dart';
import 'package:liveproject/view/driver_screens/driver_detail_screens/bottom_navigation.dart';
import 'package:liveproject/view/driver_screens/driver_detail_screens/driver_Profile.dart';
import 'package:liveproject/view/driver_screens/driver_detail_screens/passengers_request.dart';
import 'package:liveproject/view/driver_screens/driver_detail_screens/pickup_detail.dart';
import 'package:liveproject/view/driver_screens/driver_earnings/earnings.dart';
import 'package:liveproject/view/driver_screens/driver_earnings/earnings_details.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/driver_profile.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themelight.light_theme,
      debugShowCheckedModeBanner: false,
      // initialRoute: RoutesName.userSplash,
      // onGenerateRoute: Routes.generateRoute,
      home:Histories(),
    );
  }
}
