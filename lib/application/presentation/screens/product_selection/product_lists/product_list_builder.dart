import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_choose_drop_downs/drop_down_grid_builder.dart.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_lists/product_container.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/product_selection/search_field/product_serch_field.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ProductListViewBuilder extends StatelessWidget {
  const ProductListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
        builder: (context, categoryState) {
      if (categoryState.isLoading) {
        return const Skeleton(
          crossAxisCount: 2,
          itemCount: 15,
          height: 200,
        );
      } else if (categoryState.filteredProducts == null) {
        return const Skeleton(
          crossAxisCount: 2,
          itemCount: 15,
          height: 200,
        );
      }
      List<Product> product = categoryState.filteredProducts!;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductSearchField(),
          kHeight20,
          const ScreenProductSelectionProductFindDropdownGridView(),
          kHeight10,
          Text('Showing All Products', style: textHeadBold1),
          kHeight10,
          // SizedBox(
          //   width: sWidth / 2.2,
          //   child: Card(
          //     color: kWhite,
          //     child: Row(
          //       children: [
          //         kWidth5,
          //         FittedBox(
          //           child: Text(
          //             '${context.read<CategoryBlocBloc>().seriesName?.replaceAll('Samsung', '')}',
          //             style:
          //                 textHeadInter.copyWith(color: kBlack, fontSize: 14),
          //           ),
          //         ),
          //         IconButton(
          //           onPressed: () {
          //             brandSeriesProductValueNotifier.value = 1;
          //             brandSeriesProductValueNotifier.notifyListeners();
          //             context.read<CategoryBlocBloc>().modelFilter = null;
          //             context.read<CategoryBlocBloc>().varientFilter = null;
          //           },
          //           icon: const Icon(Icons.clear),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          kHeight20,
          product.isEmpty
              ? Center(child: Lottie.asset(emptyLottie))
              : GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: product.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return ProductContainer(index: index);
                  },
                )
        ],
      );
    });
  }
}
