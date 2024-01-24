import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ElevatedButtonLong extends StatelessWidget {
  const ElevatedButtonLong({
    super.key,
    required this.onPressed,
    required this.text,
    this.height = 40,
    this.wdth,
    this.color = kBluePrimary,
    this.textStyle,
  });
  final VoidCallback onPressed;
  final String text;
  final double? wdth;
  final double height;
  final Color color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wdth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(sWidth, height),
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: kRadius5),
        ),
        child: FittedBox(
          child: Text(
            text,
            style: textHeadBold1.copyWith(color: kWhite),
          ),
        ),
      ),
    );
  }
}
