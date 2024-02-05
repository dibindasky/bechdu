import 'package:beachdu/application/presentation/screens/product_selection/product_choose_drop_downs/drop_down_custom.dart';
import 'package:flutter/material.dart';

class ScreenProductSelectionProductFindDropdownGridView
    extends StatelessWidget {
  const ScreenProductSelectionProductFindDropdownGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
