import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeriesContainer extends StatelessWidget {
  const SeriesContainer({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, state) {
        final seriesList = state.filteredSeries!;
        return GestureDetector(
          onTap: () {
            brandSeriesProductValueNotifier.value = 2;
            brandSeriesProductValueNotifier.notifyListeners();
            context.read<CategoryBlocBloc>().add(
                  CategoryBlocEvent.getProducts(
                    seriesName: seriesList[index],
                    categoryType:
                        context.read<CategoryBlocBloc>().categoryType!,
                    brandName: context.read<CategoryBlocBloc>().barndName!,
                  ),
                );
            context.read<CategoryBlocBloc>().seriesName = seriesList[index];
            context.read<CategoryBlocBloc>().seriesName = null;

            // call Model event
            context.read<CategoryBlocBloc>().add(
                  CategoryBlocEvent.getModels(
                    categoryType:
                        context.read<CategoryBlocBloc>().categoryType!,
                    brandName: context.read<CategoryBlocBloc>().barndName!,
                    seriesName: seriesList[index],
                  ),
                );
          },
          child: SizedBox(
            height: 40,
            child: ClipRRect(
              borderRadius: kRadius10,
              child: ColoredBox(
                color: kBlueLight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Align(
                    alignment: Alignment.center,
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
        );
      },
    );
  }
}
