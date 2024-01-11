import 'package:beachdu/application/presentation/screens/product/widgets/custom_dropdown.dart';
import 'package:beachdu/application/presentation/screens/product/widgets/product_custom_listview.dart';
import 'package:beachdu/application/presentation/screens/product/widgets/product_serch_field.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

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
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const FinalProductImage(),
                  const ProductScreenSearchField(),
                  const SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomDropDown(),
                        ),
                        kWidth10,
                        Expanded(
                          child: CustomDropDown(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomDropDown(),
                        ),
                        kWidth10,
                        Expanded(
                          child: CustomDropDown(),
                        ),
                      ],
                    ),
                  ),
                  kHeight10,
                  Text(
                    'Showing All Products',
                    style: textHeadBold1,
                  ),
                  kHeight10,
                  const ProductListView(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
