import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/category_model/get_category_responce_model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreenSearchField extends StatefulWidget {
  const ProductScreenSearchField({Key? key}) : super(key: key);

  @override
  State<ProductScreenSearchField> createState() =>
      _ProductScreenSearchFieldState();
}

class _ProductScreenSearchFieldState extends State<ProductScreenSearchField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, homeState) {
        if (homeState.isLoading) {
          return const CircularProgressIndicator();
        } else if (homeState.hasError) {
          return Text(homeState.message ?? 'An error occurred');
        } else {
          return buildDropdown(homeState.getCategoryResponceModel!.category!);
        }
      },
    );
  }

  Widget buildDropdown(List<Category> categories) {
    return TextFormField(
      onChanged: (value) {},
      style: textHeadBold1.copyWith(fontSize: sWidth * .044),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: .0),
        prefixIcon: DropdownButtonHideUnderline(
          child: BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
            builder: (context, state) {
              return DropdownButton<String>(
                onChanged: (newValue) {
                  context.read<CategoryBlocBloc>().add(GetSingleCategoryBrands(
                        categoryType: newValue,
                      ));
                },
                value: context.read<CategoryBlocBloc>().categoryType,
                items: buildDropdownItems(categories),
                hint: Text(
                    context.read<CategoryBlocBloc>().categoryType ?? 'mobile'),
              );
            },
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(color: kBlueLight),
        ),
        hintText: brandandProductValueNotifier.value == 0
            ? 'Search for Brands...'
            : 'Search for Products...',
        hintStyle: textHeadBold1.copyWith(
          fontSize: sWidth * .04,
          color: kBlueLight,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: kBlueLight, width: .2),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> buildDropdownItems(List<Category> categories) {
    return categories.map((category) {
      return DropdownMenuItem<String>(
        onTap: () {},
        value: category.categoryType,
        child: Text(category.categoryType!),
      );
    }).toList();
  }
}
