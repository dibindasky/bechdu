import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_choose_drop_downs/drop_down_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenProductSelectionProductFindDropdownGridView extends StatefulWidget {
  const ScreenProductSelectionProductFindDropdownGridView({
    super.key,
  });

  @override
  State<ScreenProductSelectionProductFindDropdownGridView> createState() =>
      _ScreenProductSelectionProductFindDropdownGridViewState();
}

class _ScreenProductSelectionProductFindDropdownGridViewState
    extends State<ScreenProductSelectionProductFindDropdownGridView> {
  String? selecteVerient;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, state) {
        return GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 2,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1 / .2,
          ),
          itemBuilder: (context, index) {
            List<String> hints = [
              'Model',
              'Varients',
            ];
            String? initialValue;
            if (index == 0) {
              initialValue = selecteVerient ?? "Model";
            } else {
              initialValue = '';
            }
            return DropDownBuilder(
              initailvalue: initialValue,
              onChanged: (value) {
                setState(() {
                  selecteVerient = value;
                });
                context.read<CategoryBlocBloc>().verient = value;
                context.read<CategoryBlocBloc>().add(
                      GetVarients(
                        brandName: context.read<CategoryBlocBloc>().barndName!,
                        categoryType:
                            context.read<CategoryBlocBloc>().categoryType!,
                        seriesName:
                            context.read<CategoryBlocBloc>().seriesName!,
                        model: value!,
                      ),
                    );
                log('Seris $value');
              },
              index: index,
              searchHint: hints[index],
              optionsList:
                  index == 0 ? state.models ?? [] : state.varients ?? [],
            );
          },
        );
      },
    );
  }
}
