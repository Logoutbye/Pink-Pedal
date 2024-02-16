import 'package:flutter/material.dart';
import 'package:liveproject/utilis/routes/routes_name.dart';
import 'package:liveproject/utilis/routes/routes.dart';
import 'package:liveproject/utilis/theme/theme_light.dart';
import 'package:liveproject/view/driver_screens/driver_detail_screens/bottom_navigation.dart';
import 'package:liveproject/view/driver_screens/driver_detail_screens/passengers_request.dart';

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
      home: PassengersRequests(),
    );
  }
}
