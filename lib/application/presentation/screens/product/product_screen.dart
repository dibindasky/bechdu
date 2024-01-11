import 'package:beachdu/application/presentation/screens/product/widgets/drop_down_custom.dart';
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
                  kHeight20,
                  const ProductScreenSearchField(),
                  kHeight10,
                  const Row(
                    children: [
                      Expanded(
                        child: DropDownBuilder(
                          searchHint: 'Brand',
                        ),
                      ),
                      kWidth10,
                      Expanded(
                        child: DropDownBuilder(
                          searchHint: 'Series',
                        ),
                      ),
                    ],
                  ),
                  kHeight10,
                  const Row(
                    children: [
                      Expanded(
                        child: DropDownBuilder(
                          searchHint: 'Model',
                        ),
                      ),
                      kWidth10,
                      Expanded(
                        child: DropDownBuilder(
                          searchHint: 'Storage',
                        ),
                      ),
                    ],
                  ),
                  kHeight10,
                  Text(
                    'Showing All Products',
                    style: textHeadBold1,
                  ),
                  kHeight10,
                  const ProductListView(),
                  // const FinalProductImage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
