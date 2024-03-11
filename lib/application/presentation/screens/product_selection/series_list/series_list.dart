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
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Skeleton(
            crossAxisCount: 2,
            itemCount: 15,
            height: 200,
          );
        }
        if (state.hasError) {
          return const Center(
            child: Center(child: Icon(Icons.refresh)),
          );
        } else {
          if (state.filteredSeries != null ||
              state.filteredSeries!.isNotEmpty) {
            final seriesList = state.filteredSeries!;
            return Column(
              children: [
                const SeriesSearchField(),
                kHeight20,
                seriesList.isEmpty
                    ? Center(
                        child: Lottie.asset(emptyLottie),
                      )
                    : GridView.builder(
                        itemCount: seriesList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 1 / .5,
                        ),
                        itemBuilder: (context, index) {
                          return SeriesContainer(index: index);
                        },
                      ),
              ],
            );
          } else {
            return const Skeleton(crossAxisCount: 2, itemCount: 10, height: 0);
          }
        }
      },
    );
  }
}
