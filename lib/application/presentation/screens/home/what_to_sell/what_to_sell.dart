import 'dart:convert';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WhatToSellWidget extends StatelessWidget {
  const WhatToSellWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.getCategoryResponceModel == null &&
                  state.getCategoryResponceModel?.category == null) {
                return kEmpty;
              } else if (state.getCategoryResponceModel!.category!.isEmpty) {
                return kEmpty;
              }
              return Text(
                'What Do You Wanna Do Today ?',
                style: textHeadBoldBig.copyWith(
                  color: kBlack,
                  fontSize: sWidth * .04,
                ),
              );
            },
          ),
          kHeight10,
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.bestSellingLoad) {
                return const Skeleton(
                  crossAxisCount: 5,
                  itemCount: 5,
                  height: 100,
                );
              } else if (state.getCategoryResponceModel == null &&
                  state.getCategoryResponceModel?.category == null) {
                return kEmpty;
              } else if (state.getCategoryResponceModel!.category!.isEmpty) {
                return kEmpty;
              }
              final data = state.getCategoryResponceModel!.category!;
              return GridView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: state.getCategoryResponceModel!.category!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1,
                  crossAxisCount: 4,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  String base64String = data[index].categoryImage!;
                  base64String = base64String.replaceFirst(
                      RegExp(r'data:image/[^;]+;base64,'), '');
                  final categeryType = data[index].categoryType;
                  final result = uppercaseFirstLetter(categeryType ?? '');
                  return InkWell(
                    onTap: () {
                      context.read<CategoryBlocBloc>().modelFilter = null;
                      context.read<CategoryBlocBloc>().productList = [];
                      context
                          .read<CategoryBlocBloc>()
                          .add(GetSingleCategoryBrands(
                            isLoad: true,
                            categoryType: data[index].categoryType ?? 'mobile',
                          ));
                      context.read<CategoryBlocBloc>().categoryType =
                          data[index].categoryType!;
                      context.read<NavbarCubit>().changeNavigationIndex(1);
                      brandSeriesProductValueNotifier.value = 0;
                      brandSeriesProductValueNotifier.notifyListeners();
                      secondtabScreensNotifier.value = 0;
                      secondtabScreensNotifier.notifyListeners();
                      context
                          .read<PlaceOrderBloc>()
                          .add(const PlaceOrderEvent.removeAllFieldData());
                      context
                          .read<PlaceOrderBloc>()
                          .add(const PlaceOrderEvent.removeAppliedPromo());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 60,
                        height: 55,
                        decoration: BoxDecoration(
                          color: klightwhite,
                          borderRadius: kRadius5,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                color: klightwhite,
                                borderRadius: kRadius5,
                              ),
                              child: Image.memory(
                                base64.decode(base64String),
                              ),
                            ),
                            kHeight5,
                            Expanded(
                              child: Text(
                                result,
                                style: textHeadMedium1.copyWith(
                                  fontSize: sWidth * .029,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
