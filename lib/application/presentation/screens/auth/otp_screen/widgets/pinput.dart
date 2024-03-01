import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class PinEnterField extends StatelessWidget {
  PinEnterField({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: context.read<AuthBloc>().otpController,
      onChanged: (value) {
        print(context.read<AuthBloc>().otpController.text);
      },
      onLongPress: () {
        print('onLongPress');
      },
      onCompleted: (value) {
        print('Combleted');
      },
      length: 4,
      defaultPinTheme: PinTheme(
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
          borderRadius: kRadius5,
        ),
      ),
    );
  }
}
