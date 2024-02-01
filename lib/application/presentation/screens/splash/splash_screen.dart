import 'dart:async';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.onBoardingScreen);
    });
    return Scaffold(
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
    );
  }
}
