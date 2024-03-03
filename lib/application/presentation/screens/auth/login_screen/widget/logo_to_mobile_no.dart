import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class LogoToMobileNumber extends StatefulWidget {
  const LogoToMobileNumber({super.key});

  @override
  State<LogoToMobileNumber> createState() => _LogoToMobileNumberState();
}

class _LogoToMobileNumberState extends State<LogoToMobileNumber>
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
  Widget build(BuildContext context) {
    return Column(
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
          style: textHeadBoldBig.copyWith(
            fontSize: sWidth * .06,
            fontWeight: FontWeight.w600,
          ),
        ),
        kHeight10,
        Text.rich(
          TextSpan(
            text: 'We will send you an ',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .037,
            ),
            children: [
              TextSpan(
                text: 'One Time Password(OTP)',
                style: textHeadBold1,
              ),
              const TextSpan(
                text: ' on this mobile number.',
              ),
            ],
          ),
        ),
        kHeight20,
        Text(
          'Enter mobile no.*',
          style: textHeadBold1.copyWith(fontWeight: FontWeight.w600),
        ),
        kHeight5,
      ],
    );
  }
}
