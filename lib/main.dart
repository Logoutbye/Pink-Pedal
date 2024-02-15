import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Routes/routess.dart';
import 'package:liveproject/utilis/Themesdata/theme_light.dart';

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
      initialRoute: RoutesName.userSplash,
      onGenerateRoute: Routes.generateRoute,
      // home: TodayAppurtunitie,
    );
  }
}
