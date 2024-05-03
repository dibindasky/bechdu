import 'dart:async';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/data/firebase_configuration/firebase_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.forgroundMessage();
    notificationServices.firebaseInit(context);
    notificationServices.setupInteractMessage(context);
    notificationServices.isTokenRefresh();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<AuthBloc>().add(const AuthEvent.logOrNot());
    });
    sizeFinder(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        loginOrNot(context, state.logOrNot, state.isVisited);
      },
      child: Scaffold(
        body: Center(
          child: AnimatedSize(
            duration: const Duration(seconds: 1),
            child: SizedBox(
              height: sWidth * .19,
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  bechduMainlogo,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  loginOrNot(BuildContext context, bool toLogin, bool isVisited) async {
    Future.delayed(const Duration(milliseconds: 2000), () {
      if (toLogin && isVisited) {
        Navigator.pushReplacementNamed(context, Routes.bottomBar);
      } else if (isVisited && !toLogin) {
        Navigator.pushReplacementNamed(context, Routes.signInOrLogin,
            arguments: LoginWay.fromInitial);
      } else if (!isVisited) {
        Navigator.pushReplacementNamed(context, Routes.onBoardingScreen);
      }
    });
  }
}
