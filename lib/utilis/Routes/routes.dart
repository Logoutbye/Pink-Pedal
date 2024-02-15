import 'package:flutter/material.dart';
import 'package:liveproject/utilis/routes/routes_name.dart';
import 'package:liveproject/utilis/routes/slide_transition_page.dart';
import 'package:liveproject/view/driver_screens/SplashScreen.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/add_destination.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/driver_profile.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/enter_location.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/feedback_screen.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/find_ride.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/my_booking.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/ride_completed.dart';
import 'package:liveproject/view/passenger_screens/chatting_screens/allMessages_screen.dart';
import 'package:liveproject/view/passenger_screens/login_screens/create_new_password.dart';
import 'package:liveproject/view/passenger_screens/login_screens/forgot_password.dart';
import 'package:liveproject/view/passenger_screens/login_screens/otp_screen.dart';
import 'package:liveproject/view/passenger_screens/login_screens/otpcode_email_num.dart';
import 'package:liveproject/view/passenger_screens/login_screens/signup.dart';
import 'package:liveproject/view/passenger_screens/paycard_screens/debit_card.dart';
import 'package:liveproject/view/passenger_screens/paycard_screens/pay_now.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/Edit_Profile.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/My_address.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/Select_Language.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/add_new_adress.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/help_and_support.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/my_profile.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/profile_detail.dart';
import 'package:liveproject/view/passenger_screens/splash/onboarding_screens/firstscreen.dart';
import 'package:liveproject/view/passenger_screens/splash/onboarding_screens/logopage.dart';
import 'package:liveproject/view/common_screens/signinscreens.dart';

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



//  Navigator.push(
//                           context,
//                           SlideTransitionPage(
//                               applySlideTransition: true, page: AboutScreen()));