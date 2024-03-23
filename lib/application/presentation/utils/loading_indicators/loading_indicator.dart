import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingAnimation extends StatelessWidget {
  LoadingAnimation({super.key, required this.width, this.color});

  final double width;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        child: LoadingIndicator(
          colors: [color ?? kGreenPrimary],
          indicatorType: Indicator.ballPulse,
        ),
      ),
    );
  }
}
