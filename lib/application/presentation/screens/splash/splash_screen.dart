import 'dart:async';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, Routes.onBoardingScreen);
    });
    return Scaffold(
      body: Center(
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
    );
  }
}
