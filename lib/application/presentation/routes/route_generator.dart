import 'package:beachdu/application/presentation/screens/onboarding_screens/onboarding_screens.dart';
import 'package:beachdu/application/presentation/routes/animated_routes.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/auth/login_screen/login_screen.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/otp_screen.dart';
import 'package:beachdu/application/presentation/screens/home/home_screen.dart';
import 'package:beachdu/application/presentation/screens/home/location_ssetup/city_choose.dart';
import 'package:beachdu/application/presentation/screens/navbar/bottombar.dart';
import 'package:beachdu/application/presentation/screens/order/my_orders_screen.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/profile/add_address/add_address.dart';
import 'package:beachdu/application/presentation/screens/profile/profile_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/final_price_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/preview_product_screen/main_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/success_order/success_product_place_rder.dart';
import 'package:beachdu/application/presentation/screens/questions/questions_screen.dart';
import 'package:beachdu/application/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
          builder: (context) => const ScreenSplash(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const BechDuUserOnBoardingScreens());
      case Routes.bottomBar:
        return fadePageRoute(screen: const ScreenBottomNavigation());
      case Routes.signInOrLogin:
        return fadePageRoute(screen: ScreenLogin());
      case Routes.otpVerification:
        return fadePageRoute(screen: const OTPScreen());
      case Routes.homeScreen:
        return fadePageRoute(screen: const ScreenHome());
      case Routes.location:
        return fadePageRoute(screen: const LocationCityChoosing());
      case Routes.pickUpDetailScreen:
        return fadePageRoute(screen: const ScreenPickUp());
      case Routes.questions:
        return fadePageRoute(screen: const QuestionTabs());
      case Routes.produtPreview:
        return noTrancitionRoute(screen: const ScreenProductPreview());
      case Routes.searchScreen:
        return fadePageRoute(screen: const ScreenProductSelection());
      case Routes.finalPriceScreen:
        return fadePageRoute(screen: const FinalPriceScreen());
      case Routes.profile:
        return fadePageRoute(screen: const ScreenProfile());
      case Routes.myOrders:
        return fadePageRoute(screen: const ScreenMyOrders());
      case Routes.successOder:
        return fadePageRoute(screen: const SuuccessOrderPlaced());
      case Routes.addressAdd:
        return fadePageRoute(screen: AddAddressScreen());
      default:
        return _errorScreen();
    }
  }

  static Route<dynamic> _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Error while navigating')),
      );
    });
  }
}
