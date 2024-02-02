import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductScreenSearchField extends StatefulWidget {
  const ProductScreenSearchField({
    super.key,
  });

  @override
  State<ProductScreenSearchField> createState() =>
      _ProductScreenSearchFieldState();
}

class _ProductScreenSearchFieldState extends State<ProductScreenSearchField> {
  String? selectedCategory;
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
              setState(() {
                selectedCategory = newValue;
              });
            },
            items: const [
              DropdownMenuItem(
                value: 'All',
                child: Text('All '),
              ),
              DropdownMenuItem(
                value: 'Mobile',
                child: Text('Mobile '),
              ),
              DropdownMenuItem(
                value: 'Earbuds',
                child: Text('Earbuds'),
              ),
              DropdownMenuItem(
                value: 'Lapatops',
                child: Text('Lapatops'),
              ),
              DropdownMenuItem(
                value: 'Watch',
                child: Text('Watch'),
              ),
            ],
            hint: Text('  ${selectedCategory ?? " All"}'),
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
