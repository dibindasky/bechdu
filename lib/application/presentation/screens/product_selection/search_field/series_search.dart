import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeriesSearchField extends StatelessWidget {
  const SeriesSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        log(value);
        context
            .read<CategoryBlocBloc>()
            .add(CategoryBlocEvent.seriesSearch(searchQuery: value));
      },
      style: textHeadBold1.copyWith(fontSize: sWidth * .04),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: .0),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: DropdownButtonHideUnderline(
            child: BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
              builder: (context, state) {
                return DropdownButton<String>(
                  onChanged: (newValue) {
                    // Dispatch an event to fetch series for a specific brand
                    if (context.read<CategoryBlocBloc>().barndName !=
                        newValue) {
                      context.read<CategoryBlocBloc>().barndName = newValue;
                      context.read<CategoryBlocBloc>().add(
                            GetSeries(
                              brandName: newValue!,
                              categoryType: context
                                  .read<CategoryBlocBloc>()
                                  .categoryType!,
                            ),
                          );
                    }
                  },
                  value: context.read<CategoryBlocBloc>().barndName,
                  items: [
                    if (state.filteredBrands != null)
                      for (var brand in state.filteredBrands!)
                        DropdownMenuItem<String>(
                          value: brand.brandName,
                          child: Text(brand.brandName!),
                        ),
                  ],
                );
              },
            ),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(color: kBlueLight),
        ),
        hintText: 'Search for Series...',
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
  }
}
