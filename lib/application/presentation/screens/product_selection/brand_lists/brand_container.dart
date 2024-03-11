import 'dart:convert';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/brands.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandContainer extends StatelessWidget {
  const BrandContainer({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, state) {
        final data = state.getSingleCategoryResponce;
        final List<Brands> brands = state.filteredBrands ?? data!.brands!;
        String base64String = brands[index].brandImage!;
        base64String =
            base64String.replaceFirst(RegExp(r'data:image/[^;]+;base64,'), '');
        return InkWell(
          onTap: () {
            context.read<QuestionTabBloc>().newList.clear();
            final categoryType =
                context.read<CategoryBlocBloc>().categoryType ?? 'mobile';

            context.read<CategoryBlocBloc>().categoryType = categoryType;
            context.read<CategoryBlocBloc>().barndName =
                brands[index].brandName!;

            //Series fetching for selected products
            context.read<CategoryBlocBloc>().add(GetSeries(
                  brandName: context.read<CategoryBlocBloc>().barndName!,
                  categoryType: context.read<CategoryBlocBloc>().categoryType!,
                ));

            //Getting serirs screen screen
            brandSeriesProductValueNotifier.value = 1;
            brandSeriesProductValueNotifier.notifyListeners();

            // Reset question tab
            context.read<QuestionTabBloc>().add(const ResetTabSelection());
          },
          child: Material(
            elevation: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: sWidth * .5,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: kRadius10,
                      child: ColoredBox(
                        color: klightgrey.withOpacity(.1),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.memory(
                            base64.decode(base64String),
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.error);
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(brands[index].brandName!),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
