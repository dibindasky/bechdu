import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class GlobalProductSearch extends StatelessWidget {
  const GlobalProductSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.products == null || state.products!.isEmpty) {
          return Center(
            child: Lottie.asset(emptyLottie),
          );
        }
        if (state.products != null || state.products!.isNotEmpty) {
          final products = state.products!;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                        state.loadMore ? products.length + 1 : products.length,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1 / 1.2,
                    ),
                    itemBuilder: (context, index) {
                      if (state.loadMore && index == state.products!.length) {
                        return const Center(
                            child: LoadingAnimation(width: 100));
                      }
                      String url =
                          "${ApiEndPoints.baseUrlImagePath}${Uri.encodeComponent(
                        products[index].productImage!,
                      )}";
                      return GestureDetector(
                        onTap: () {
                          context.read<QuestionTabBloc>().newList.clear();
                          context
                              .read<QuestionTabBloc>()
                              .add(QuestionTabEvent.getQuestions(
                                categoryType: state.searchResponceModel!
                                    .product![index].categoryType!,
                                product: products[index],
                              ));

                          final categoryType =
                              context.read<CategoryBlocBloc>().categoryType ??
                                  'mobile';
                          context.read<CategoryBlocBloc>().categoryType =
                              categoryType;
                          //Selected product Slug assigning
                          context.read<CategoryBlocBloc>().slug =
                              products[index].slug!;

                          // Selected product Model assigning
                          context.read<CategoryBlocBloc>().model =
                              products[index].model;

                          //Selected product varient assigning
                          context.read<CategoryBlocBloc>().verient =
                              products[index].variant;

                          //Selected product image assinging
                          context.read<CategoryBlocBloc>().productImage =
                              products[index].productImage;

                          context.read<NavbarCubit>().changeNavigationIndex(1);
                          secondtabScreensNotifier.value = 1;
                          secondtabScreensNotifier.notifyListeners();
                          brandSeriesProductValueNotifier.value = 0;
                          brandSeriesProductValueNotifier.notifyListeners();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: kBlack),
                            borderRadius: kRadius10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: SizedBox(
                                  height: 100,
                                  child: Image.network(
                                    url,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Icon(
                                        Icons.error,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              kHeight10,
                              Text(
                                products[index].model!,
                                style: textHeadBold1.copyWith(
                                    overflow: TextOverflow.ellipsis),
                              ),
                              kWidth10,
                              Text(products[index].variant!,
                                  style: textHeadBold1),
                              Text(
                                'Upto ₹${products[index].estimatedPrice}',
                                style: textHeadMedium1.copyWith(
                                    fontSize: sWidth * .034),
                              ),
                              kHeight5,
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: Lottie.asset(emptyLottie),
          );
        }
      },
    );
  }
}
