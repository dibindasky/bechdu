import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ProductListViewBuilder extends StatelessWidget {
  const ProductListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
        Text(
          'Showing All Products',
          style: textHeadBold1,
        ),
        kHeight10,
        BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
          builder: (context, categoryState) {
            if (categoryState.isLoading) {
              return const Skeleton(
                crossAxisCount: 2,
                itemCount: 15,
                height: 200,
              );
            } else if (categoryState.hasError) {
              return Center(child: Text(categoryState.message!));
            } else {
              if (categoryState.getProductsResponceModel!.product == null ||
                  categoryState.getProductsResponceModel!.product!.isEmpty) {
                return Center(child: Lottie.asset(emptyLottie));
              } else {
                final products =
                    categoryState.getProductsResponceModel!.product!;
                return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: products.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1.4,
                  ),
                  itemBuilder: (context, index) {
                    String url =
                        "${ApiEndPoints.baseUrlImagePath}${Uri.encodeComponent(products[index].productImage!)}";
                    return Container(
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
                              height: 80,
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
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: ksmalLight, borderRadius: kRadius5),
                            child: Text(
                              'New',
                              style: textHeadBold1.copyWith(
                                color: kYellowLight,
                                fontSize: sWidth * .034,
                              ),
                            ),
                          ),
                          kHeight10,
                          Text(products[index].seriesName!,
                              style: textHeadBold1),
                          Text(
                            'Upto ₹${products[index].basePrice}',
                            style: textHeadMedium1.copyWith(
                                fontSize: sWidth * .034),
                          ),
                          kHeight5,
                          Text(
                            '12 mobiles sold in last 22 Hrs',
                            style: textHeadMedium1.copyWith(
                                fontSize: sWidth * .029),
                          )
                        ],
                      ),
                    );
                  },
                );
              }
            }
          },
        ),
      ],
    );
  }
}