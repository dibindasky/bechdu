import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/product_selection/search_field/series_search.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
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
                          return GestureDetector(
                            onTap: () {
                              context.read<CategoryBlocBloc>().seriesName =
                                  seriesList[index];
                              brandSeriesProductValueNotifier.value = 2;
                              brandSeriesProductValueNotifier.notifyListeners();
                              context.read<CategoryBlocBloc>().add(
                                    CategoryBlocEvent.getProducts(
                                      seriesName: seriesList[index],
                                      categoryType: context
                                          .read<CategoryBlocBloc>()
                                          .categoryType!,
                                      brandName: context
                                          .read<CategoryBlocBloc>()
                                          .barndName!,
                                    ),
                                  );

                              // call series event
                              context.read<CategoryBlocBloc>().add(
                                    CategoryBlocEvent.getModels(
                                      categoryType: context
                                          .read<CategoryBlocBloc>()
                                          .categoryType!,
                                      brandName: context
                                          .read<CategoryBlocBloc>()
                                          .barndName!,
                                      seriesName: seriesList[index],
                                    ),
                                  );
                            },
                            child: Material(
                              elevation: 1,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SizedBox(
                                    height: 50,
                                    child: ClipRRect(
                                      borderRadius: kRadius10,
                                      child: ColoredBox(
                                        color: kBlueLight,
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                            ),
                                            child: Text(
                                              maxLines: 4,
                                              state.filteredSeries![index],
                                              style: textHeadBold1.copyWith(
                                                color: kWhite,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
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
