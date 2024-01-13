import 'dart:async';

import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/auth/widgets/custom_textfield_login.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ScreenAuth extends StatefulWidget {
  const ScreenAuth({super.key});

  @override
  State<ScreenAuth> createState() => _ScreenAuthState();
}

class _ScreenAuthState extends State<ScreenAuth>
    with SingleTickerProviderStateMixin {
  late AnimationController _logoAnimationController;
  late Animation<Offset> _logoAnimation;
  @override
  void initState() {
    _logoAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    _logoAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0, -2))
            .animate(
      CurvedAnimation(
        parent: _logoAnimationController,
        curve: Curves.linear,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 900, maxWidth: 400),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(
                    position: _logoAnimation,
                    child: SizedBox(
                        width: sWidth * 0.50, child: Image.asset(beachdulogo))),
                kHeight50,
                CustomTextFormFieldLogin(
                  controller: TextEditingController(),
                  hintText: 'Email',
                  prefixIcon: Icons.person,
                ),
                kHeight30,
                CustomTextFormFieldLogin(
                  controller: TextEditingController(),
                  hintText: 'Password',
                  prefixIcon: Icons.lock,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: textHeadRegular1.copyWith(
                        color: kBluePrimary,
                        fontSize: sWidth * 0.035,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                kHeight20,
                ElevatedButtonLong(
                  onPressed: () {
                    loginOrSignup();
                  },
                  text: 'Sign in',
                ),
                kHeight30,
                Text(
                  'OR',
                  style: textHeadBold1.copyWith(color: kBluePrimary),
                ),
                kHeight30,
                ElevatedButtonLong(
                  onPressed: () {
                    loginOrSignup();
                  },
                  text: 'Sign up',
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  loginOrSignup() {
    _logoAnimationController.forward();
    Timer(const Duration(microseconds: 500), () {
     Navigator.pushNamed(context, Routes.bottomBar);
    });
  }
}
