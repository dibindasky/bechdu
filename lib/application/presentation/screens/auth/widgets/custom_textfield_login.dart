import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldLogin extends StatelessWidget {
  const CustomTextFormFieldLogin({
    super.key,
    required this.hintText,
    required this.controller,
    required this.prefixIcon,
  });
  final String hintText;
  final TextEditingController controller;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: kBluePrimary,
        ),
        hintText: hintText,
        hintStyle: textHeadRegular1.copyWith(color: kBluePrimary),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kBluePrimary)),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kBluePrimary,
          ),
        ),
      ),
    );
  }
}
