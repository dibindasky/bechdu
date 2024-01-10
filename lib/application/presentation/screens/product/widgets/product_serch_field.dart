import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductScreenSearchField extends StatelessWidget {
  const ProductScreenSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Text(''),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: kBlueLight,
            ),
          ),
          hintText: 'Search for product...',
          hintStyle: textHeadBold1.copyWith(
            fontSize: sWidth * .034,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: kBlueLight,
              width: .2,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}
