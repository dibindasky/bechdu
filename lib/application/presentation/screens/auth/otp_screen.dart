import 'dart:async';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/auth/widgets/count_down_widget.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});
  //final PhoneNumber number;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _logoAnimationController;
  late Animation<Offset> _logoAnimation;

  final TextEditingController otpController = TextEditingController();

  @override
  void initState() {
    _logoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ),
    );
    _logoAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -2),
    ).animate(
      CurvedAnimation(
        parent: _logoAnimationController,
        curve: Curves.linear,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _logoAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 55,
      height: 55,
      textStyle: textHeadMedium1.copyWith(fontSize: sWidth * .060),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kGreenLight.withOpacity(0.03),
            offset: const Offset(0, 6),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
        border: Border.all(color: kGreenPrimary),
        borderRadius: BorderRadius.circular(6),
      ),
    );
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _logoAnimation,
                child: Center(
                  child: SizedBox(
                    height: sWidth * .19,
                    child: Image.asset(bechduMainlogo),
                  ),
                ),
              ),
              kHeight40,
              Text(
                'OTP Verification',
                style: textHeadBoldBig.copyWith(fontSize: sWidth * .06),
              ),
              kHeight20,
              Text(
                'Enter the code from the sms we sent to ',
                style: textHeadMedium1.copyWith(
                  color: kBlack,
                  fontSize: sWidth * .037,
                ),
              ),
              Text(
                '+91 798597245',
                style: textHeadMedium1.copyWith(
                  color: kBlack,
                  fontSize: sWidth * .037,
                ),
              ),
              const CountdownTimer(
                duration: Duration(minutes: 2),
              ),
              kHeight20,
              Pinput(
                controller: otpController,
                onChanged: (value) {
                  print(otpController.text);
                },
                onLongPress: () {
                  print('onLongPress');
                },
                onCompleted: (value) {
                  print('Combleted');
                },
                length: 6,
                defaultPinTheme: defaultPinTheme,
              ),
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
                    loginOrSignup();
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
                  // if (otpController.text.isEmpty) {
                  //   log('Empty');
                  //   showSnack(context: context, message: 'Otp Field is empty');
                  // } else {
                  showSnack(context: context, message: 'Please wait');
                  loginOrSignup();
                  //}
                },
                text: 'Submit',
              ),
            ],
          ),
        ),
      ),
    );
  }

  loginOrSignup() {
    //String phoneNumber = phoneController.text;
    // print(phoneNumber);
    _logoAnimationController.forward();
    Timer(const Duration(microseconds: 500), () {
      Navigator.pushNamed(context, Routes.bottomBar);
    });
  }
}
