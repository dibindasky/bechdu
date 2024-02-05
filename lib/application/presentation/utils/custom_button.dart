import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    required this.onPressed,
    required this.text,
  });
  final String text;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor ?? kGreenPrimary,
          borderRadius: BorderRadius.circular(6),
        ),
        width: width ?? 200,
        height: height ?? 40,
        child: Center(
          child: Text(
            text,
            style: textHeadSemiBold1.copyWith(
              color: kWhite,
              fontSize: sWidth * .04,
            ),
          ),
        ),
      ),
    );
  }
}
