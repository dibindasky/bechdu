import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

class GlobalProductSearch extends StatefulWidget {
  const GlobalProductSearch({super.key});

  @override
  State<GlobalProductSearch> createState() => _GlobalProductSearchState();
}

class _GlobalProductSearchState extends State<GlobalProductSearch> {
  //late ScrollController controller = ScrollController();
  // @override
  // void initState() {
  //   print('==========================================================');
  //   controller.addListener(() {
  //     log('Inside addListener 0ne');
  //     if (controller.position.pixels == controller.position.maxScrollExtent) {
  //       log('Inside addListener');
  //       context.read<HomeBloc>().add(const HomeEvent.nextPage());
  //     }
  //   });
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Skeleton(
            crossAxisCount: 2,
            itemCount: 10,
            height: 0,
          );
        } else if (state.products == null) {
          return const Skeleton(
            crossAxisCount: 2,
            itemCount: 15,
            height: 00,
          );
        } else if (state.products!.isEmpty) {
          return Lottie.asset(emptyLottie);
        }
        final products = state.products!;
        int length = state.loadMore
            ? state.products!.length + (state.products!.length % 2 == 0 ? 3 : 2)
            : state.products!.length;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridView.builder(
                  // controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    if (state.loadMore && index >= state.products!.length) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          decoration: BoxDecoration(
                            color: klightwhite,
                            borderRadius: kRadius5,
                          ),
                        ),
                      );
                    }
                    String url =
                        "${ApiEndPoints.baseUrlImagePath}${Uri.encodeComponent(
                      products[index].productImage!,
                    )}";
                    return GestureDetector(
                      onTap: () {
                        context
                            .read<QuestionTabBloc>()
                            .add(QuestionTabEvent.getQuestions(
                              categoryType: state.searchResponceModel!
                                  .product![index].categoryType!,
                              product: products[index],
                            ));

                        final categoryType =
                            context.read<CategoryBlocBloc>().categoryType ??
                                'mobile';
                        context.read<CategoryBlocBloc>().categoryType =
                            categoryType;
                        //Selected product Slug assigning
                        context.read<CategoryBlocBloc>().slug =
                            products[index].slug!;

                        // Selected product Model assigning
                        context.read<CategoryBlocBloc>().model =
                            products[index].model;

                        //Selected product varient assigning
                        context.read<CategoryBlocBloc>().verient =
                            products[index].variant;

                        //Selected product image assinging
                        context.read<CategoryBlocBloc>().productImage =
                            products[index].productImage;

                        context.read<NavbarCubit>().changeNavigationIndex(1);
                        secondtabScreensNotifier.value = 1;
                        secondtabScreensNotifier.notifyListeners();
                        brandSeriesProductValueNotifier.value = 0;
                        brandSeriesProductValueNotifier.notifyListeners();
                        context
                            .read<PlaceOrderBloc>()
                            .add(const PlaceOrderEvent.removeAllFieldData());
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
                              products[index].model!,
                              style: textHeadBold1.copyWith(
                                  overflow: TextOverflow.ellipsis),
                            ),
                            kWidth10,
                            Text(
                              products[index].variant!,
                              style: textHeadBold1,
                            ),
                            Text(
                              'Upto ₹${products[index].estimatedPrice}',
                              style: textHeadMedium1.copyWith(
                                fontSize: sWidth * .034,
                              ),
                            ),
                            kHeight5,
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
