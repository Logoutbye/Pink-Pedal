import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Routes/slide_transition_page.dart';
import 'package:liveproject/view/passenger_screens/login_screens/createnewpassword.dart';
import 'package:liveproject/view/passenger_screens/login_screens/forgotpassword.dart';
import 'package:liveproject/view/passenger_screens/login_screens/otp.dart';
import 'package:liveproject/view/passenger_screens/login_screens/otpcode_email_num.dart';
import 'package:liveproject/view/driver_screens/SplashScreen.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/adddestination.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/deriver_profile.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/enter_location.dart';

import 'package:liveproject/view/passenger_screens/booking_screeens/feedback_screen.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/findRide.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/my_booking.dart';
import 'package:liveproject/view/passenger_screens/booking_screeens/ride_completed.dart';
import 'package:liveproject/view/passenger_screens/chatting_screens/allMessages_screen.dart';
import 'package:liveproject/view/passenger_screens/login_screens/signup.dart';
import 'package:liveproject/view/passenger_screens/paycard_screens/Dabit_card.dart';
import 'package:liveproject/view/passenger_screens/paycard_screens/pay_now.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/Add_NewAdress.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/Edit_Profile.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/HelpAnd-Support.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/MyProfile.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/My_address.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/Select_Language.dart';
import 'package:liveproject/view/passenger_screens/profile_screens/profile_detail.dart';
import 'package:liveproject/view/passenger_screens/splash/onboarding_screens/firstscreen.dart';
import 'package:liveproject/view/passenger_screens/splash/onboarding_screens/logopage.dart';
import 'package:liveproject/view/common_Screens/signinscreens.dart';
//  Navigator.push(
//                           context,
//                           SlideTransitionPage(
//                               applySlideTransition: true, page: AboutScreen()));
class Routes{
 static Route<dynamic> generateRoute(RouteSettings settings){
switch(settings.name){
  case RoutesName.userSplash:
  return SlideTransitionPage(page:const LogoPage());
  // return SlideTransitionPage(page:const LogoPage());
   case RoutesName.onBoarding:
  return SlideTransitionPage(page:const FirstOnboardingScreen());
  case RoutesName.signUpUser:
  return SlideTransitionPage(page:const Signup());
  case RoutesName.signInUser:
  return SlideTransitionPage(page:const SigninScreen());
    case RoutesName.otpCode:
  return SlideTransitionPage(page:const Otpscreen());
   case RoutesName.otpEmailNum:
  return SlideTransitionPage(page:const OTP_Email_Num());
   case RoutesName.forGotPassword:
  return SlideTransitionPage(page:const Forgot_password());
   case RoutesName.createNewPassword:
  return SlideTransitionPage(page:const newpassword());
  case RoutesName.addDestination:
  return SlideTransitionPage(page:const AddDestination());
   case RoutesName.enterLocation:
  return SlideTransitionPage(page:const EnterLocation());
  case RoutesName.chooseRide:
  return SlideTransitionPage(page:const Findride());
  case RoutesName.mybooking:
  return SlideTransitionPage(page:const Mybooking());
  case RoutesName.userFeedBack:
  return SlideTransitionPage(page:const feedback_screen());
    case RoutesName.rideCompleted:
  return SlideTransitionPage(page:const RideCompleted());
  case RoutesName.deriverProfile:
  return SlideTransitionPage(page:const DriverProfile());
 // this is routes of messages
   case RoutesName.allMessagesShown:
  return SlideTransitionPage(page:const AllMessages());
 case  RoutesName.debitCard:
 return SlideTransitionPage(page:const DebitCard());
 case RoutesName.payNow:
 return SlideTransitionPage(page:const Paynow());
//
case RoutesName.userProfile:
return SlideTransitionPage(page:const MyProfile());
case RoutesName.profileDetail:
return SlideTransitionPage(page:const ProfileDetail());
case RoutesName.editProfile:
return SlideTransitionPage(page:const EditProfile());
case RoutesName.myAddress:
return SlideTransitionPage(page:const MyAddress());
case RoutesName.addNewAddress:
return SlideTransitionPage(page:const NewAddress());
case RoutesName.language:
return SlideTransitionPage(page:const Language());
case RoutesName.helpAndSupport:
return SlideTransitionPage(page:const HelpAndSupport());
//deriverisides
case RoutesName.deriverUser:
return SlideTransitionPage(page:const splashScreenDeriver());
   default:
        // Handle undefined routes
        throw Exception('Invalid route: ${settings.name}');

}

  }

}