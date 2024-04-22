import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/search_field/series_search.dart';
import 'package:beachdu/application/presentation/screens/product_selection/series_list/series_container.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SeriesSelectionBuilder extends StatelessWidget {
  const SeriesSelectionBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Skeleton(
              crossAxisCount: 2,
              itemCount: 15,
            );
          } else if (state.filteredSeries == null) {
            return Lottie.asset(emptyLottie);
          }
          final seriesList = state.filteredSeries!;
          return Column(
            children: [
              const SeriesSearchField(),
              kHeight20,
              seriesList.isEmpty
                  ? Center(child: Lottie.asset(emptyLottie))
                  : GridView.builder(
                      itemCount: seriesList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1 / .3,
                      ),
                      itemBuilder: (context, index) {
                        return SeriesContainer(index: index);
                      },
                    ),
            ],
          );
        },
      ),
    );
  }
}
