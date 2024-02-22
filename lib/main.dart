import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liveproject/import_all.dart';
import 'package:liveproject/view/driver_screens/driver_detail_screens/pickup_detail.dart';
import 'package:liveproject/view/driver_screens/driver_detail_screens/trip_detail_deriver.dart';
import 'package:liveproject/view/driver_screens/login_driver/signup_driver.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/current_driver_detials.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/trip_detail.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/create_newRide.dart';

void main() {
  runApp(const ProviderScope(child: Home()));
}

final navigatorKey = GlobalKey<NavigatorState>();

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: key,
      theme: Themelight.light_theme,
      debugShowCheckedModeBanner: false,
      
      // initialRoute: RoutesName.userSplash,
      // onGenerateRoute: Routes.generateRoute,
      home:SignupDriver(),
    );
  }
}
