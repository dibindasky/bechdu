import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/bottom_section.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/logo_to_countdown.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/pinput.dart';
import 'package:flutter/material.dart';


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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoToCountDownSection(),
              PinEnterField(),
              const BottomSection(),
            ],
          ),
        ),
      ),
    );
  }
}
