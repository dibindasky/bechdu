import 'dart:async';

import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        Text(
          "I didn't receive any code. RESEND",
          style: textHeadMedium1,
        ),
        kHeight50,
        kHeight50,
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              loginOrSignup(context);
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
          },
          text: 'Submit',
        ),
      ],
    );
  }

  loginOrSignup(BuildContext context) {
    Timer(const Duration(microseconds: 500), () {
      Navigator.pushReplacementNamed(context, Routes.bottomBar);
    });
  }
}
