import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liveproject/import_all.dart';

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
      initialRoute: RoutesName.userSplash,
      onGenerateRoute: Routes.generateRoute,
      // home: PassengersRequests(),
    );
  }
}
