import 'package:liveproject/import_all.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // SplashServices splashServices = SplashServices();
  // NotificationServices notificationServices = NotificationServices();

  @override
  // void initState() {
  // notificationServices.requestNotificationPermission();
  // notificationServices
  //     .getDeviceToken()
  //     .then((value) => { if(kDebugMode)print('::: device FCM token: $value')});
  // notificationServices.setupInteractMessage(context);
  // notificationServices.firebaseInit(context);
  // super.initState();
  // splashServices.checkAuthentication(context);
  // }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
        () => Navigator.pushNamed(context, RoutesName.onBoarding));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AssetPaths.splashPath,
          // fit: BoxFit.contain,
        ),
        Align(
          child: Image.asset(AssetPaths.splashimage),
        )
      ],
    );
  }
}
