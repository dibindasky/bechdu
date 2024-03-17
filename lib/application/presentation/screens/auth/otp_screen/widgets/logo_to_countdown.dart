import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/count_down_widget.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoToCountDownSection extends StatefulWidget {
  const LogoToCountDownSection({super.key});

  @override
  State<LogoToCountDownSection> createState() => _LogoToCountDownSectionState();
}

class _LogoToCountDownSectionState extends State<LogoToCountDownSection>
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

  @override
  void dispose() {
    _logoAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
          context.read<AuthBloc>().phoneNumberController.text,
          style: textHeadMedium1.copyWith(
            color: kBlack,
            fontSize: sWidth * .037,
          ),
        ),
        kHeight20,
      ],
    );
  }
}
