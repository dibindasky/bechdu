import 'dart:async';

import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, Routes.signIn);
    });
    return Scaffold(
      backgroundColor: kGreenPrimary,
      body: Center(
        child: Text(
          'BECHDU',
          style: textHeadBold1.copyWith(color: kWhite, fontSize: sWidth * 0.07),
        ),
      ),
    );
  }
}
