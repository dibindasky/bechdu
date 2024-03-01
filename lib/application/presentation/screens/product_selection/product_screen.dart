import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/product_selection/brand_lists/brand_list_builder.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_lists/product_list_builder.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/final_price_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/preview_product_screen/main_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/success_order/success_product_place_rder.dart';
import 'package:beachdu/application/presentation/screens/questions/questions_screen.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/confirmation_daillogue/exit_app_dailogue.dart';
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

ValueNotifier<int> brandandProductValueNotifier = ValueNotifier(0);
List<Widget> brandAndPoductList = [
  const BrandListviewBuilder(),
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
              if (brandandProductValueNotifier.value == 1) {
                brandandProductValueNotifier.value = 0;
                brandandProductValueNotifier.notifyListeners();
              } else {
                if (state.filteredBrands!.isEmpty) {
                  brandandProductValueNotifier.value = 0;
                  brandandProductValueNotifier.notifyListeners();
                } else {
                  bool shouldPop = await showConfirmationDialog(
                    context,
                    onPressed: () => Navigator.pop(context),
                  );
                  return shouldPop;
                }
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
                        valueListenable: brandandProductValueNotifier,
                        builder: (context, index, child) {
                          return brandAndPoductList[index];
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
