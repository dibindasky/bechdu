import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductSearchField extends StatelessWidget {
  const ProductSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) {
            context
                .read<CategoryBlocBloc>()
                .add(ProductSearch(searchQuery: value));
          },
          style: textHeadBold1.copyWith(fontSize: sWidth * .04),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(color: kBlueLight),
            ),
            hintText: 'Search for Products...',
            hintStyle: textHeadBold1.copyWith(
              fontSize: sWidth * .035,
              color: kBlueLight,
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: kBlueLight, width: .2),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        );
      },
    );
  }
}
