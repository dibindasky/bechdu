import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandSearchField extends StatelessWidget {
  const BrandSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, homeState) {
        return TextFormField(
          onChanged: (value) {
            context
                .read<CategoryBlocBloc>()
                .add(BrandSearch(searchQuery: value));
          },
          style: textHeadBold1.copyWith(fontSize: sWidth * .044),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: .0),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  onChanged: (newValue) {
                    context.read<CategoryBlocBloc>().add(
                          GetSingleCategoryBrands(
                            categoryType: newValue,
                          ),
                        );
                    context.read<CategoryBlocBloc>().categoryType =
                        newValue ?? 'mobile';
                  },
                  value: context.read<CategoryBlocBloc>().categoryType,
                  items: homeState.getCategoryResponceModel?.category!
                      .map((category) {
                    return DropdownMenuItem<String>(
                      value: category.categoryType,
                      child: Text(category.categoryType ?? 'mobile'),
                    );
                  }).toList(),
                  hint: Text(
                    context.read<CategoryBlocBloc>().categoryType ?? 'mobile',
                  ),
                ),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(color: kBlueLight),
            ),
            hintText: 'Search for Brands...',
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
      },
    );
  }
}
