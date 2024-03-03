import 'dart:convert';
import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/home/best_selling_devices/circle_count_images/circle_count_images.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class BestSellingDevices extends StatelessWidget {
  const BestSellingDevices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '   Best Selling',
            style: textHeadBoldBig,
          ),
          kHeight10,
          AspectRatio(
            aspectRatio: 1.8,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Skeleton(
                    crossAxisCount: 2,
                    itemCount: 2,
                    height: 0,
                  );
                }
                if (state.hasError) {
                  return IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.refresh),
                  );
                } else {
                  if (state.bestSellingProductsResponceModel != null) {
                    final data = state.bestSellingProductsResponceModel;
                    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
                      builder: (context, categoryBlocState) {
                        return ListView.builder(
                          itemCount: data!.products!.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final items = data.products![index];
                            String url =
                                "${ApiEndPoints.baseUrlImagePath}${Uri.encodeComponent(items.productImage!)}";
                            return GestureDetector(
                              onTap: () {
                                log('Tapp data ${data.products![index]}');

                                context
                                    .read<QuestionTabBloc>()
                                    .add(QuestionTabEvent.getQuestions(
                                      categoryType: state
                                          .bestSellingProductsResponceModel!
                                          .products![index]
                                          .categoryType!,
                                      product: data.products![index],
                                    ));
                                context
                                    .read<NavbarCubit>()
                                    .changeNavigationIndex(1);
                                //Selected product Slug assigning

                                //Builder cahnges
                                secondtabScreensNotifier.value = 1;
                                secondtabScreensNotifier.notifyListeners();
                                brandandProductValueNotifier.value = 0;
                                brandandProductValueNotifier.notifyListeners();
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ClipRRect(
                                  borderRadius: kRadius15,
                                  child: ColoredBox(
                                    color:
                                        textFieldBorderColor.withOpacity(0.210),
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          width: sWidth * 0.60,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 5),
                                                  child: SizedBox(
                                                    height: sWidth * 0.35,
                                                    width: sWidth * 0.55,
                                                    child: Image.network(
                                                      url,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                  top: 5,
                                                  right: 10,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '${items.model}',
                                                      style: textHeadBold1,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Up to ${items.estimatedPrice}',
                                                          style: textHeadBold1,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          right: 20,
                                          top: sWidth * 0.30,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: kGreenPrimary,
                                              border: Border.all(
                                                  color: kWhite, width: 3),
                                              borderRadius: kRadius10,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: Text(
                                                'GO',
                                                style: textHeadBold1.copyWith(
                                                  fontSize: sWidth * .032,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 20,
                                          top: sWidth * 0.40,
                                          child:
                                              const UsersProfileStackRecomended(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  } else {
                    return Lottie.asset(emptyLottie);
                  }
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
