import 'package:beachdu/application/presentation/routes/animated_routes.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/auth/auth_screen.dart';
import 'package:beachdu/application/presentation/screens/home/home_screen.dart';
import 'package:beachdu/application/presentation/screens/navbar/bottombar.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/product/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/product_preview_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/questions_screen.dart';
import 'package:beachdu/application/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return fadePageRoute(screen: const ScreenSplash());
      case Routes.signIn:
        return fadePageRoute(milliseconds: 1500,screen: const ScreenAuth());
      case Routes.bottomBar:
        return fadePageRoute(screen: ScreenBottomNavigation());
      case Routes.homeScreen:
        return fadePageRoute(screen: const ScreenHome());
      case Routes.pickUpDetailScreen:
        return fadePageRoute(screen: const ScreenPickUp());
      case Routes.questions:
        return fadePageRoute(screen: const ScreenQuestions());
      case Routes.produtPreview:
        return noTrancitionRoute(screen: const ScreenProductPreview());
      case Routes.searchScreen:
        return fadePageRoute(screen: const ScreenProductSelection());
      // case Routes.questions:
      //   return arguments is String
      //       ? MaterialPageRoute(
      //           builder: (ctx) => ScreenQuestions(aa: arguments,))
      //       : _errorScreen();
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
