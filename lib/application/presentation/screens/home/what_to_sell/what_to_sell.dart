import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WhatToSellWidget extends StatelessWidget {
  const WhatToSellWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<CategoryBlocBloc>().add(const GetSingleCategoryBrands());
        context.read<HomeBloc>().add(const HomeEvent.getAllCategory());
      },
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What Do You Wanna Do Today ?',
            style: textHeadBoldBig.copyWith(
              color: kBlack,
              fontSize: sWidth * .04,
            ),
          ),
          kHeight10,
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Skeleton(
                  crossAxisCount: 5,
                  itemCount: 5,
                  height: 100,
                );
              } else if (state.hasError) {
                return Center(
                  child: Text(state.message ?? errorMessage),
                );
              } else {
                if (state.getCategoryResponceModel == null) {
                  return Center(
                    child: Text(state.message ?? 'Category is empty'),
                  );
                } else {
                  final data = state.getCategoryResponceModel!.category!;
                  return GridView.builder(
                    padding: const EdgeInsets.all(0),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.getCategoryResponceModel!.category!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1,
                      crossAxisCount: data.length < 5 ? 4 : 5,
                    ),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return BlocBuilder<NavbarCubit, NavbarState>(
                        builder: (context, navbar) {
                          return InkWell(
                            onTap: () {
                              context
                                  .read<CategoryBlocBloc>()
                                  .add(GetSingleCategoryBrands(
                                    categoryType:
                                        data[index].categoryType ?? 'mobile',
                                  ));
                              context.read<CategoryBlocBloc>().categoryType =
                                  data[index].categoryType!;
                              // log('UI data[index].categoryType ===>>> : ${data[index].categoryType}');
                              context
                                  .read<NavbarCubit>()
                                  .changeNavigationIndex(1);
                              brandandProductValueNotifier.value = 0;
                              brandandProductValueNotifier.notifyListeners();
                              secondtabScreensNotifier.value = 0;
                              secondtabScreensNotifier.notifyListeners();
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 70,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: klightwhite,
                                    borderRadius: kRadius5,
                                  ),
                                  child: Image.asset(gridData[index][1]),
                                ),
                                kHeight5,
                                Text(
                                  data[index].categoryType!,
                                  style: textHeadMedium1.copyWith(
                                    fontSize: sWidth * .026,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }
}

List<List> gridData = [
  ['Mobile', 'assets/images/home category mobile.png'],
  ['Laptop', 'assets/images/home category laptop.png'],
  ['Watch', 'assets/images/home category  watch.png'],
  ['Pods', 'assets/images/home category  headset.png'],
  ['Repair', 'assets/images/home category repair.png'],
];
