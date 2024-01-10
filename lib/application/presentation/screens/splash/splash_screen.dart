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
      Navigator.pushReplacementNamed(context, Routes.searchScreen);
    });
    return const Scaffold(
      backgroundColor: kGreenPrimary,
      body: Center(
        child: Text('Beachdu'),
      ),
    );
  }
}
