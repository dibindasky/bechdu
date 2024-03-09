import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_choose_drop_downs/drop_down_grid_builder.dart.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/product_selection/search_field/product_serch_field.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:flutter/material.dart';
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
        } else if (categoryState.hasError) {
          return const Center(child: Icon(Icons.refresh_outlined));
        } else {
          if (categoryState.filteredProducts == null) {
            return const Skeleton(
              crossAxisCount: 2,
              itemCount: 15,
              height: 200,
            );
          } else {
            //final products = categoryState.getProductsResponceModel!.products!;
            List<Product> product = categoryState.filteredProducts ?? [];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProductSearchField(),
                kHeight20,
                const ScreenProductSelectionProductFindDropdownGridView(),
                kHeight10,
                Text('Showing All Products', style: textHeadBold1),
                kHeight20,
                product.isEmpty
                    //Searchig list is empty it wil show lottie
                    ? Center(child: Lottie.asset(emptyLottie))
                    : GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: product.length,
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1 / 1.2,
                        ),
                        itemBuilder: (context, index) {
                          String url =
                              "${ApiEndPoints.baseUrlImagePath}${Uri.encodeComponent(product[index].productImage!)}";
                          return GestureDetector(
                            onTap: () {
                              context
                                  .read<QuestionTabBloc>()
                                  .add(QuestionTabEvent.getQuestions(
                                    categoryType: categoryState
                                        .getProductsResponceModel!
                                        .products![index]
                                        .categoryType!,
                                    product: product[index],
                                  ));

                              //Selected product Slug assigning
                              context.read<CategoryBlocBloc>().slug =
                                  product[index].slug!;

                              // Selected product Model assigning
                              context.read<CategoryBlocBloc>().model =
                                  product[index].model;

                              //Selected product varient assigning
                              context.read<CategoryBlocBloc>().verient =
                                  product[index].variant;

                              //Selected product image assinging
                              context.read<CategoryBlocBloc>().productImage =
                                  product[index].productImage;

                              //Builder cahnges
                              secondtabScreensNotifier.value = 1;
                              secondtabScreensNotifier.notifyListeners();
                              brandSeriesProductValueNotifier.value = 0;
                              brandSeriesProductValueNotifier.notifyListeners();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: kBlack),
                                borderRadius: kRadius10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: SizedBox(
                                      height: 100,
                                      child: Image.network(
                                        url,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return const Icon(
                                            Icons.error,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  kHeight10,
                                  Text(
                                    product[index].model!,
                                    style: textHeadBold1.copyWith(
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  kWidth10,
                                  Text(product[index].variant!,
                                      style: textHeadBold1),
                                  Text(
                                    'Upto ₹${product[index].estimatedPrice}',
                                    style: textHeadMedium1.copyWith(
                                        fontSize: sWidth * .034),
                                  ),
                                  kHeight5,
                                ],
                              ),
                            ),
                          );
                        },
                      )
              ],
            );
          }
        }
      },
    );
  }
}
