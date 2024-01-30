import 'package:beachdu/application/presentation/screens/navbar/bottombar.dart';
import 'package:beachdu/application/presentation/screens/product/widgets/drop_down_custom.dart';
import 'package:beachdu/application/presentation/screens/product/widgets/product_custom_listview.dart';
import 'package:beachdu/application/presentation/screens/product/widgets/product_serch_field.dart';
import 'package:beachdu/application/presentation/screens/questions/dynamic_tabs/questions_screen.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/exit_app_daillogue/exit_app_dailogue.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

List<Widget> stackWdget = [];

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
          bool shouldPop = await showExitConfirmationDialog(context);
          return shouldPop;
        },
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  kHeight20,
                  const ProductScreenSearchField(),
                  kHeight10,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1 / .2,
                    ),
                    itemBuilder: (context, index) {
                      List<String> hints = [
                        'Brand',
                        'Series',
                        'Model',
                        'Storage',
                      ];

                      return DropDownBuilder(
                        searchHint: hints[index],
                        optionsList: getDynamicOptions(index),
                      );
                    },
                  ),
                  kHeight10,
                  const ProductListView(),
                  kHeight20,
                  ElevatedButtonLong(
                    onPressed: () {
                      body[1] = const QuestionTabs();
                      bottomBarNotifier.notifyListeners();
                    },
                    text: 'Get exact value',
                  ),
                  //const FinalProductImage(),
                  kHeight20,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<List<String>> getDynamicOptions(int index) {
    switch (index) {
      case 0:
        return ['Brand1', 'Samsung', 'Oppo', 'Apple', 'Motorola']
            .map((option) => [option])
            .toList();
      case 1:
        return ['Series1', 'A21s', '312X', 'Series3']
            .map((option) => [option])
            .toList();
      case 2:
        return ['Model1', 'Pro', 'Max', 'Ultra']
            .map((option) => [option])
            .toList();
      case 3:
        return ['Storage1', '32GB', '6GB', '128GB']
            .map((option) => [option])
            .toList();
      default:
        return [];
    }
  }
}
