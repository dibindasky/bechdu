import 'dart:async';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/count_down_widget.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomSection extends StatefulWidget {
  const BottomSection({super.key, required this.loginWay});

  final LoginWay loginWay;

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  bool canResend = true;
  Color klightgrey = Colors.grey;
  bool _canResend = true;

  Color resendButtonColor = Colors.grey;

  void _startResendCooldown() {
    setState(() {
      _canResend = false;
      resendButtonColor = Colors.grey;
    });

    Timer(const Duration(seconds: 30), () {
      setState(() {
        _canResend = true;
        resendButtonColor = Colors.black;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I didn't receive any code. ",
              style: textHeadMedium1,
            ),
            TextButton(
              onPressed: _canResend
                  ? () {
                      _startResendCooldown();
                      Future.delayed(const Duration(seconds: 30)).then(
                        (value) {
                          final phoneNumber = context
                              .read<AuthBloc>()
                              .phoneNumberController
                              .text
                              .replaceAll(' ', '');
                          LoginModel loginModel = LoginModel(
                            mobileNumber: phoneNumber,
                          );
                          context.read<AuthBloc>().add(
                                AuthEvent.otpSend(loginModel: loginModel),
                              );
                          Navigator.pushReplacementNamed(
                            context,
                            Routes.otpVerification,
                            arguments: widget.loginWay,
                          );
                        },
                      );
                      showSnack(context: context, message: 'OTP Re-sended');
                    }
                  : null,
              child: Text(
                'RESEND',
                style: textHeadMedium1.copyWith(color: resendButtonColor),
              ),
            ),
          ],
        ),
        if (!_canResend)
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Please wait for '),
              CountdownTimer(
                duration: Duration(seconds: 30),
              ),
              Text(' before resending OTP')
            ],
          ),
        const SizedBox(height: 50),
        kHeight20,
        widget.loginWay == LoginWay.fromProfile ||
                widget.loginWay == LoginWay.fromQuestionPick
            ? kHeight20
            : Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.bottomBar);
                    context.read<AuthBloc>().phoneNumberController.clear();
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
        kHeight20,
        BlocBuilder<QuestionTabBloc, QuestionTabState>(
          builder: (context, questionBlo) {
            return BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return ElevatedButtonLong(
                  wdth: sWidth * .7,
                  onPressed: () {
                    final otp = context
                        .read<AuthBloc>()
                        .otpController
                        .text
                        .replaceAll(' ', '');
                    RegExp phoneNumberRegExp = RegExp(r'^[0-9]+$');
                    if (phoneNumberRegExp.hasMatch(otp)) {
                      if (otp.isEmpty) {
                        showSnack(
                          context: context,
                          message: 'Enter your otp here',
                          color: kRed,
                        );
                      } else if (otp.length < 4) {
                        showSnack(
                          context: context,
                          message: 'OTP number should keep 4 digits',
                          color: kRed,
                        );
                      } else {
                        //Login event calling
                        OtpVerifyRequestModel otpVerifyRequestModel =
                            OtpVerifyRequestModel(
                          otp: otp,
                          phone: context
                              .read<AuthBloc>()
                              .phoneNumberController
                              .text
                              .replaceAll(' ', ''),
                        );
                        context.read<AuthBloc>().add(
                              AuthEvent.otpVeriying(
                                otpVerifyRequestModel: otpVerifyRequestModel,
                              ),
                            );
                      }
                      // context.read<AuthBloc>().phoneNumberController.clear();
                    } else {
                      showSnack(
                        context: context,
                        message: 'Not a OTP number: $otp',
                        color: kRed,
                      );
                    }
                  },
                  text: state.isLoading ? 'Loading...!' : 'Submit',
                );
              },
            );
          },
        ),
      ],
    );
  }
}
