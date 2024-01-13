import 'dart:async';

import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin>
    with SingleTickerProviderStateMixin {
  late AnimationController _logoAnimationController;
  late Animation<Offset> _logoAnimation;

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

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController phoneController = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  @override
  Widget build(BuildContext context) {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SlideTransition(
                position: _logoAnimation,
                child: SizedBox(
                  height: sWidth * .19,
                  child: Center(child: Image.asset(bechduMainlogo)),
                ),
              ),
              kHeight40,
              Text(
                'Login With your \nphone number',
                style: textHeadBoldBig.copyWith(fontSize: sWidth * .06),
              ),
              kHeight10,
              Text(
                'We will send you an One Time Password(OTP) on this mobile number.',
                style: textHeadMedium1.copyWith(
                  fontSize: sWidth * .037,
                ),
              ),
              kHeight20,
              Text(
                'Enter mobile no.*',
                style: textHeadBold1,
              ),
              kHeight5,
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  useBottomSheetSafeArea: true,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: const TextStyle(color: Colors.black),
                initialValue: number,
                textFieldController: phoneController,
                formatInput: true,
                keyboardType: const TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
                inputBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
              ),
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
              kHeight50,
              ElevatedButtonLong(
                onPressed: () {
                  if (phoneController.text.isEmpty) {
                    //   showSnack(
                    //       context: context, message: 'Number Field is empty');
                    //   print('No number');
                    // } else {
                    showSnack(context: context, message: 'Done');
                    loginOrSignup();
                    print(phoneController.text);
                  }
                },
                text: 'Get OTP',
              ),
            ],
          ),
        ),
      ),
    );
  }

  loginOrSignup() {
    String phoneNumber = phoneController.text;
    print(phoneNumber);
    _logoAnimationController.forward();
    Timer(const Duration(microseconds: 500), () {
      Navigator.pushReplacementNamed(context, Routes.otpVerification);
    });
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }
}
