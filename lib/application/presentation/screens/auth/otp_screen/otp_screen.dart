import 'dart:async';

import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/bottom_section.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/logo_to_countdown.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/pinput.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
        ),
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.otpVerifyResponceModel != null) {
              loginOrSignup(context);
              context.read<AuthBloc>().phoneNumberController.clear();
              context.read<AuthBloc>().otpController.clear();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const LogoToCountDownSection(),
                kHeight50,
                PinEnterField(),
                const BottomSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  loginOrSignup(BuildContext context) {
    Timer(const Duration(microseconds: 500), () {
      Navigator.pushReplacementNamed(context, Routes.bottomBar);
    });
  }
}
