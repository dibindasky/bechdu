import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Routes.bottomBar);
              context.read<AuthBloc>().phoneNumberController.clear();
            },
            child: Text(
              'Skip for now',
              style: textHeadInter.copyWith(
                fontSize: sWidth * .045,
                color: klightGreen,
                decoration: TextDecoration.underline,
                decorationColor: klightGreen,
                decorationThickness: 1.4,
              ),
            ),
          ),
        ),
        kHeight50,
        BlocBuilder<AuthBloc, AuthState>(
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
                    showSnack(context: context, message: 'Enter your otp here');
                  } else if (otp.length < 4) {
                    showSnack(
                      context: context,
                      message: 'OTP number should keep 4 digits',
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
                    context.read<AuthBloc>().phoneNumberController.clear();
                  }
                } else {
                  showSnack(
                    context: context,
                    message: 'Not a OTP number: $otp',
                  );
                }
              },
              text: state.isLoading ? 'Verifying' : 'Submit',
            );
          },
        ),
      ],
    );
  }
}
