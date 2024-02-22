import 'package:liveproject/import_all.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.userSplash:
        return SlideTransitionPage(page: const SplashScreen());

      case RoutesName.onBoarding:
        return SlideTransitionPage(page: const FirstOnboardingScreen());
      case RoutesName.signUpforPassenger:
        return SlideTransitionPage(page: const SignUpForPassenger());
      case RoutesName.signInScreen:
        return SlideTransitionPage(page: SigninScreen());
      case RoutesName.otpScreen:
        final OtpDetilasArgument args =
            settings.arguments as OtpDetilasArgument;

        return SlideTransitionPage(
            page: OtpScreen(
          isCommingFromRegistrationScreen: args.isCommingFromRegistrationScreen,
          phoneNumber: args.phoneNo,
          verifyWithEmail: args.verifyWithEmail,
        ));
      case RoutesName.forgetPasswordWithOptions:
        return SlideTransitionPage(page: const ForgetPasswordWithOptions());
      case RoutesName.forgotPassword:
        final ForgetPasswordArguments args =
            settings.arguments as ForgetPasswordArguments;
        return SlideTransitionPage(
            page: ForgotPassword(
          withEmailOrPhoneNo: args.withEmailOrPhoneNo,
        ));
      case RoutesName.createNewPassword:
        final CreateNewPasswordArugments args =
            settings.arguments as CreateNewPasswordArugments;
        return SlideTransitionPage(
            page: CreateNewPassword(
          token: args.token,
          phoneOrEmail: args.phoneOrEmail,
          verifyWithEmail: args.verifyWithEmail,
        ));
      case RoutesName.addDestination:
        return SlideTransitionPage(page: const AddDestination());
      case RoutesName.enterLocation:
        return SlideTransitionPage(page: const EnterLocation());
      case RoutesName.chooseRide:
        return SlideTransitionPage(page: const FindRide());
      case RoutesName.mybooking:
        return SlideTransitionPage(page: const MyBooking());
      case RoutesName.userFeedBack:
        return SlideTransitionPage(page: const FeedbackScreen());
      case RoutesName.rideCompleted:
        return SlideTransitionPage(page: const RideCompleted());
      case RoutesName.deriverProfile:
        return SlideTransitionPage(page: const DriverProfile());
      // this is routes of messages
      case RoutesName.allMessagesShown:
        return SlideTransitionPage(page: const AllMessages());
      case RoutesName.debitCard:
        return SlideTransitionPage(page: const DebitCard());
      case RoutesName.payNow:
        return SlideTransitionPage(page: const PayNow());

      case RoutesName.userProfile:
        return SlideTransitionPage(page: const MyProfile());
      case RoutesName.profileDetail:
        return SlideTransitionPage(page: const ProfileDetail());
      case RoutesName.editProfile:
        return SlideTransitionPage(page: const EditProfile());
      case RoutesName.myAddress:
        return SlideTransitionPage(page: const MyAddress());
      case RoutesName.addNewAddress:
        return SlideTransitionPage(page: const NewAddress());
      case RoutesName.language:
        return SlideTransitionPage(page: const Language());
      case RoutesName.helpAndSupport:
        return SlideTransitionPage(page: const HelpAndSupport());
//deriverisides
      case RoutesName.selectRoleScreen:
        return SlideTransitionPage(page: const SelectRoleScreen());
      default:
        // Handle undefined routes
        throw Exception('Invalid route: ${settings.name}');
    }
  }
}

//////////////////////////   Help  ///////////////////////////////////

//  Navigator.push(
//                           context,
//                           SlideTransitionPage(
//                               applySlideTransition: true, page: AboutScreen()));

///////////////// how to pass arguments in name contructor
///step 1
// class MovieDetailsArguments {
//   final Movies movie;
//   final bool isLoading;
//   final bool isSent;
//   final String name;
//   MovieDetailsArguments({
//     required this.movie,
//     required this.isLoading,
//     required this.isSent,
//     required this.name,
//   });
// }
// step 2
// case RoutesName.movieDetails:
//   final MovieDetailsArguments args = settings.arguments as MovieDetailsArguments;
//   return SlideTransitionPage(page: MovieDetailsScreen(movieDetailsArgs: args));
// step 3
// Navigator.pushNamed(
//   context,
//   RoutesName.movieDetails,
//   arguments: MovieDetailsArguments(
//     movie: yourMoviesInstance,
//     isLoading: true,
//     isSent: false,
//     name: "John Doe",
//   ),
// );

class GetRole {
  static String? role;
}
