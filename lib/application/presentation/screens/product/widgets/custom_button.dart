import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.width,
    this.height,
    this.onPressed,
    required this.text,
  });
  final String text;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: kGreenPrimary,
          borderRadius: BorderRadius.circular(6),
        ),
        width: width ?? 220,
        height: height ?? 30,
        child: Center(
          child: Text(
            text,
            style: textHeadMedium1.copyWith(
              color: kWhite,
              fontSize: sWidth * .040,
            ),
          ),
        ),
      ),
    );
  }
}
