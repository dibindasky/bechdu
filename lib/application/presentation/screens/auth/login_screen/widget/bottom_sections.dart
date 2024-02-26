import 'dart:async';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomSections extends StatelessWidget {
  const BottomSections({super.key, this.isFromInside});
  final bool? isFromInside;
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
        isFromInside == true
            ? kEmpty
            : Align(
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
            login(context);
          },
          text: 'Get OTP',
        ),
      ],
    );
  }

  login(BuildContext context) {
    if (context.read<AuthBloc>().phoneNumberController.text.trim().isEmpty) {
      showSnack(context: context, message: 'Enter your number');
    } else if (context
            .read<AuthBloc>()
            .phoneNumberController
            .text
            .trim()
            .length <
        10) {
      showSnack(context: context, message: 'Number should be 10 digit');
    } else if (context
            .read<AuthBloc>()
            .phoneNumberController
            .text
            .trim()
            .length >
        10) {
      showSnack(
        context: context,
        message: 'Mobile number should keep 10 digit only',
      );
    } else {
      Timer(const Duration(microseconds: 500), () {
        context.read<AuthBloc>().add(
              Login(
                  loginModel: LoginModel(
                      phone: context
                          .read<AuthBloc>()
                          .phoneNumberController
                          .text
                          .trim())),
            );
        context.read<AuthBloc>().phoneNumberController.clear();
        //For bottombar tab change
        context.read<NavbarCubit>().changeNavigationIndex(0);
        Navigator.pushReplacementNamed(context, Routes.bottomBar);
        isFromInside == true ? Navigator.of(context).pop() : null;
      });
    }
  }
}
