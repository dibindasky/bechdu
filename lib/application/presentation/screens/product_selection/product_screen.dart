import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/product_selection/brand_lists/brand_list_builder.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_lists/product_list_builder.dart';
import 'package:beachdu/application/presentation/screens/product_selection/series_list/series_list.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/final_price_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/preview_product_screen/main_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/success_order/success_product_place_rder.dart';
import 'package:beachdu/application/presentation/screens/questions/questions_screen.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
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
            context.read<CategoryBlocBloc>().modelFilter = null;
            context.read<CategoryBlocBloc>().varientFilter = null;
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
                      if (index == 0) {
                        return const BrandListviewBuilder();
                      }
                      if (index == 1) {
                        return const SeriesSelectionBuilder();
                      } else {
                        return const ProductListViewBuilder();
                      }
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
  }
}
