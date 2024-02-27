import 'dart:async';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loginOrNot();
    });
    sizeFinder(context);
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

  Future<void> loginOrNot() async {
    context.read<AuthBloc>().add(const AuthEvent.logOrNot());

    final logOrNot = await SecureSotrage.getlLogin();
    if (!logOrNot) {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, Routes.onBoardingScreen);
      });
    } else {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, Routes.bottomBar);
      });
    }
  }
}
