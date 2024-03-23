import 'dart:async';
import 'dart:developer';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomSections extends StatelessWidget {
  const BottomSections({
    super.key,
    required this.loginWay,
  });
  final LoginWay loginWay;

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
                  color: kGreenPrimary,
                  fontSize: sWidth * .037,
                ),
              ),
            ],
          ),
        ),
        kHeight50,
        loginWay == LoginWay.fromProfile ||
                loginWay == LoginWay.fromQuestionPick
            ? kHeight40
            : Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.bottomBar);
                  },
                  child: Text(
                    'Skip for now',
                    style: textHeadInter.copyWith(
                      fontSize: sWidth * .045,
                      color: kGreenPrimary,
                      decoration: TextDecoration.underline,
                      decorationColor: kGreenPrimary,
                      decorationThickness: 1.4,
                    ),
                  ),
                ),
              ),
        kHeight50,
        BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.otpSendResponceModel != null) {
              showSnack(
                context: context,
                message: state.message ?? 'OTP Send Successfully',
              );
              navigate(context);
            }
          },
          builder: (context, state) {
            return ElevatedButtonLong(
              wdth: sWidth * .7,
              onPressed: () {
                log('ontap');
                login(context);
              },
              text: state.load ? 'Redirecting' : 'Get OTP',
            );
          },
        ),
      ],
    );
  }

  login(BuildContext context) {
    // Remove all spaces
    final phoneNumber =
        context.read<AuthBloc>().phoneNumberController.text.replaceAll(' ', '');
    //To find number or not
    RegExp phoneNumberRegExp = RegExp(r'^[0-9]+$');
    if (phoneNumberRegExp.hasMatch(phoneNumber)) {
      if (phoneNumber.isEmpty) {
        showSnack(
          context: context,
          message: 'Enter your number',
          color: kRed,
        );
      } else if (phoneNumber.length < 10) {
        showSnack(
          context: context,
          message: 'Number should be 10 digit',
          color: kRed,
        );
      } else if (phoneNumber.length > 10) {
        showSnack(
          context: context,
          message: 'Mobile number should keep 10 digit only',
          color: kRed,
        );
      } else {
        LoginModel loginModel = LoginModel(mobileNumber: phoneNumber);
        context.read<AuthBloc>().add(AuthEvent.otpSend(loginModel: loginModel));
      }
    } else {
      showSnack(
        context: context,
        message: 'Not a valid phone number: $phoneNumber',
        color: kRed,
      );
    }
  }

  navigate(BuildContext context) {
    //Login event calling

    Navigator.pushReplacementNamed(
      context,
      Routes.otpVerification,
      arguments: loginWay,
    );
  }
}
