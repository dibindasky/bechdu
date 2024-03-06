import 'dart:convert';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/product_selection/brand_lists/brand_list_builder.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_lists/product_list_builder.dart';
import 'package:beachdu/application/presentation/screens/product_selection/search_field/product_serch_field.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/final_price_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/preview_product_screen/main_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/success_order/success_product_place_rder.dart';
import 'package:beachdu/application/presentation/screens/questions/questions_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/confirmation_daillogue/exit_app_dailogue.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

ValueNotifier<int> secondtabScreensNotifier = ValueNotifier(0);
List<Widget> secondNavigationScreens = [
  const ScreenProductSelection(),
  const QuestionTabs(),
  const ScreenProductPreview(),
  const FinalPriceScreen(),
  const ScreenPickUp(),
  const SuuccessOrderPlaced(),
];

ValueNotifier<int> brandSeriesProductValueNotifier = ValueNotifier(0);
List<Widget> brandAndSeriesPoductList = [
  const BrandListviewBuilder(),
  const SeriesSelectionBuilder(),
  const ProductListViewBuilder(),
];

class SecondTabvaluelistanableBBuilder extends StatelessWidget {
  const SecondTabvaluelistanableBBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: secondtabScreensNotifier,
      builder: (context, value, child) {
        return secondNavigationScreens[value];
      },
    );
  }
}

class ScreenProductSelection extends StatelessWidget {
  const ScreenProductSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            FocusScopeNode focusScopeNode = FocusScope.of(context);
            if (!focusScopeNode.hasPrimaryFocus) {
              focusScopeNode.unfocus();
            }
          },
          child: WillPopScope(
            onWillPop: () async {
              if (brandSeriesProductValueNotifier.value == 2) {
                brandSeriesProductValueNotifier.value = 1;
                brandSeriesProductValueNotifier.notifyListeners();
              } else if (brandSeriesProductValueNotifier.value == 1) {
                brandSeriesProductValueNotifier.value = 0;
                brandSeriesProductValueNotifier.notifyListeners();
              } else {
                context.read<NavbarCubit>().changeNavigationIndex(0);
              }
              return false;
            },
            child: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    children: [
                      kHeight10,
                      ValueListenableBuilder(
                        valueListenable: brandSeriesProductValueNotifier,
                        builder: (context, index, child) {
                          return brandAndSeriesPoductList[index];
                        },
                      ),
                      kHeight20,
                    ],
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
            child: Icon(Icons.refresh),
          );
        } else {
          if (state.series != null || state.series!.isNotEmpty) {
            return Column(
              children: [
                const ProductSearchField(),
                GridView.builder(
                  itemCount: state.series!.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1 / .5,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        brandSeriesProductValueNotifier.value = 2;
                        brandSeriesProductValueNotifier.notifyListeners();
                        context.read<CategoryBlocBloc>().add(
                              CategoryBlocEvent.getProducts(
                                categoryType: context
                                    .read<CategoryBlocBloc>()
                                    .categoryType!,
                                brandName:
                                    context.read<CategoryBlocBloc>().barndName!,
                              ),
                            );
                      },
                      child: Material(
                        elevation: 1,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 50,
                              child: ClipRRect(
                                borderRadius: kRadius10,
                                child: ColoredBox(
                                  color: klightgrey.withOpacity(.1),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
                                      child: Text(
                                        maxLines: 4,
                                        state.series![index],
                                        style: textHeadBold1,
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
