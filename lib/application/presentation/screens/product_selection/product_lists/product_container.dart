import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, categoryState) {
        List<Product> product = categoryState.filteredProducts ?? [];
        String url =
            "${ApiEndPoints.baseUrlImagePath}${Uri.encodeComponent(product[index].productImage!)}";

        return GestureDetector(
          onTap: () {
            context.read<QuestionTabBloc>().add(QuestionTabEvent.getQuestions(
                  categoryType: categoryState
                      .getProductsResponceModel!.products![index].categoryType!,
                  product: product[index],
                ));

            //Selected product Slug assigning
            context.read<CategoryBlocBloc>().slug = product[index].slug!;

            // Selected product Model assigning
            context.read<CategoryBlocBloc>().model = product[index].model;

            //Selected product varient assigning
            context.read<CategoryBlocBloc>().verient = product[index].variant;

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
                      errorBuilder: (context, error, stackTrace) {
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
                  style:
                      textHeadBold1.copyWith(overflow: TextOverflow.ellipsis),
                ),
                kWidth10,
                Text(product[index].variant!, style: textHeadBold1),
                Text(
                  'Upto ₹${product[index].estimatedPrice}',
                  style: textHeadMedium1.copyWith(fontSize: sWidth * .034),
                ),
                kHeight5,
              ],
            ),
          ),
        );
      },
    );
  }
}
