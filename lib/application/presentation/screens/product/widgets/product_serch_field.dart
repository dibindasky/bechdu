import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductScreenSearchField extends StatelessWidget {
  const ProductScreenSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textHeadBold1.copyWith(fontSize: sWidth * .044),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: .0,
        ),
        prefixIcon: DropdownButtonHideUnderline(
          child: DropdownButton(
            onChanged: (String? newValue) {
              // Handle dropdown value change
            },
            items: const [
              DropdownMenuItem(
                value: 'Category 1',
                child: Text('A  '),
              ),
              DropdownMenuItem(
                value: 'Category 2',
                child: Text('S  '),
              ),
            ],
            hint: const Text('  All'),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(
            color: kBlueLight,
          ),
        ),
        hintText: 'Search for product...',
        hintStyle: textHeadBold1.copyWith(
          fontSize: sWidth * .043,
          color: kBlueLight,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kBlueLight,
            width: .2,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }
}
