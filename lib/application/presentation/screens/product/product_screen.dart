import 'package:beachdu/application/presentation/screens/product/widgets/drop_down_custom.dart';
import 'package:beachdu/application/presentation/screens/product/widgets/final_product_image.dart';
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
            child: ListView(
              children: const [
                kHeight20,
                ProductScreenSearchField(),
                kHeight10,
                PridustsSelectinDropDowNBuilder(),
                kHeight10,
                ProductListView(),
                kHeight20,
                FinalProductImage(),
                kHeight20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PridustsSelectinDropDowNBuilder extends StatelessWidget {
  const PridustsSelectinDropDowNBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 7,
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1 / .2),
      itemBuilder: (context, index) {
        return const DropDownBuilder(
          searchHint: 'Brand',
        );
      },
    );
  }
}
