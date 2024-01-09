import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenAuth extends StatelessWidget {
  const ScreenAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ScreenAuth',
          style: textHeadMedium1,
          // style: TextStyle(
          //     fontFamily: 'Gilroy-Regular', fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
