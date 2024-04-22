import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/presentation/screens/home/global_search/global_search_builder.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

class GlobalProductSearch extends StatelessWidget {
  const GlobalProductSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.products == null) {
          return Center(child: Lottie.asset(emptyLottie));
        } else if (state.products!.isEmpty) {
          return Center(child: Lottie.asset(emptyLottie));
        }
        final products = state.products!;
        int length = state.loadMore
            ? products.length + (products.length % 2 == 0 ? 2 : 1)
            : products.length;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1.29,
                  ),
                  itemBuilder: (context, index) {
                    if (state.loadMore && index >= state.products!.length) {
                      return const Loadmore();
                    }
                    return GlobalProductSearchBuilder(
                      index: index,
                      products: products,
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
