import 'dart:async';

import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BottomSections extends StatelessWidget {
  const BottomSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don’t have account?  ',
                style: textHeadMedium1.copyWith(
                  color: klightBlack,
                  fontSize: sWidth * .037,
                ),
              ),
              TextSpan(
                text: 'No Problem We Will Create One For You',
                style: textHeadMedium1.copyWith(
                  color: klightGreen,
                  fontSize: sWidth * .037,
                ),
              ),
            ],
          ),
        ),
        kHeight50,
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(
                Routes.bottomBar,
              );
            },
            child: Text(
              'Skip for now',
              style: textHeadInter.copyWith(
                fontSize: sWidth * .045,
                color: klightGreen,
                decoration: TextDecoration.underline,
                decorationColor:
                    klightGreen, // You can set the color of the underline
                decorationThickness: 1.4,
              ),
            ),
          ),
        ),
        kHeight50,
        ElevatedButtonLong(
          onPressed: () {
            loginOrSignup(context);
            //  print(phoneController.text);
          },
          text: 'Get OTP',
        ),
      ],
    );
  }

  loginOrSignup(BuildContext context) {
    // String phoneNumber = phoneController.text;
    // print(phoneNumber);
    // _logoAnimationController.forward();
    Timer(const Duration(microseconds: 500), () {
      Navigator.pushReplacementNamed(context, Routes.otpVerification);
    });
  }
}
