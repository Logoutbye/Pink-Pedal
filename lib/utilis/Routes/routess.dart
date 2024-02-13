import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Routes/slide_transition_page.dart';
import 'package:liveproject/view/DeriverSides_Screens/SplashScreen.dart';
import 'package:liveproject/view/RIderSises_Screens/booking_screeens/adddestination.dart';
import 'package:liveproject/view/RIderSises_Screens/booking_screeens/deriver_profile.dart';
import 'package:liveproject/view/RIderSises_Screens/booking_screeens/enter_location.dart';

import 'package:liveproject/view/RIderSises_Screens/booking_screeens/feedback_screen.dart';
import 'package:liveproject/view/RIderSises_Screens/booking_screeens/findRide.dart';
import 'package:liveproject/view/RIderSises_Screens/booking_screeens/my_booking.dart';
import 'package:liveproject/view/RIderSises_Screens/booking_screeens/ride_completed.dart';
import 'package:liveproject/view/RIderSises_Screens/chatting_screens/allMessages_screen.dart';
import 'package:liveproject/view/RIderSises_Screens/login_screens/signup.dart';
import 'package:liveproject/view/RIderSises_Screens/paycard_screens/Dabit_card.dart';
import 'package:liveproject/view/RIderSises_Screens/paycard_screens/pay_now.dart';
import 'package:liveproject/view/RIderSises_Screens/profile_screens/Add_NewAdress.dart';
import 'package:liveproject/view/RIderSises_Screens/profile_screens/Edit_Profile.dart';
import 'package:liveproject/view/RIderSises_Screens/profile_screens/HelpAnd-Support.dart';
import 'package:liveproject/view/RIderSises_Screens/profile_screens/MyProfile.dart';
import 'package:liveproject/view/RIderSises_Screens/profile_screens/My_address.dart';
import 'package:liveproject/view/RIderSises_Screens/profile_screens/Select_Language.dart';
import 'package:liveproject/view/RIderSises_Screens/profile_screens/profile_detail.dart';
import 'package:liveproject/view/RIderSises_Screens/splash/onboarding_screens/firstscreen.dart';
import 'package:liveproject/view/RIderSises_Screens/splash/onboarding_screens/logopage.dart';
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