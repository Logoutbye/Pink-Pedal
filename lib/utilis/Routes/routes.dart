import 'package:liveproject/import_all.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.userSplash:
        return SlideTransitionPage(page: const LogoPage());
      // return SlideTransitionPage(page:const LogoPage());
      case RoutesName.onBoarding:
        return SlideTransitionPage(page: const FirstOnboardingScreen());
      case RoutesName.signUpUser:
        return SlideTransitionPage(page: const SignUp());
      case RoutesName.signInUser:
        return SlideTransitionPage(page: const SigninScreen());
      case RoutesName.otpCode:
        return SlideTransitionPage(page: const Otpscreen());
      case RoutesName.otpEmailNum:
        return SlideTransitionPage(page: const OTPEmailNum());
      case RoutesName.forGotPassword:
        return SlideTransitionPage(page: const ForgotPassword());
      case RoutesName.createNewPassword:
        return SlideTransitionPage(page: const CreateNewPassword());
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
      case RoutesName.deriverUser:
        return SlideTransitionPage(page: const splashScreenDeriver());
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
