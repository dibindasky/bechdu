import 'dart:convert';
import 'dart:developer';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class BrandListviewBuilder extends StatelessWidget {
  const BrandListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Skeleton(
            crossAxisCount: 2,
            itemCount: 15,
            height: 200,
          );
        } else if (state.hasError) {
          return Center(child: Text(state.message ?? errorMessage));
        } else {
          if (state.getSingleCategoryResponce == null ||
              state.getSingleCategoryResponce!.brands == null) {
            return Center(child: LottieBuilder.asset(emptyLottie));
          } else {
            final data = state.getSingleCategoryResponce;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight10,
                Text('Showing All Brands', style: textHeadBold1),
                kHeight10,
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data!.brands!.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    String base64String = data.brands![index].brandImage!;
                    base64String = base64String.replaceFirst(
                        RegExp(r'data:image/[^;]+;base64,'), '');
                    return BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, homeBloc) {
                        return InkWell(
                          onTap: () {
                            if (homeBloc.getCategoryResponceModel != null) {
                              final categoryType = context
                                      .read<CategoryBlocBloc>()
                                      .categoryType ??
                                  'mobile';
                              context.read<CategoryBlocBloc>().barndName =
                                  data.brands![index].brandName!;
                              context.read<CategoryBlocBloc>().add(GetSeries(
                                  brandName: context
                                      .read<CategoryBlocBloc>()
                                      .barndName!,
                                  categoryType: categoryType));
                              context.read<CategoryBlocBloc>().add(GetProducts(
                                    categoryType: categoryType,
                                    brandName: data.brands![index].brandName!,
                                  ));
                              brandandProductValueNotifier.value = 1;
                              brandandProductValueNotifier.notifyListeners();
                            }
                          },
                          child: Material(
                            elevation: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: SizedBox(
                                    width: sWidth * .5,
                                    height: 100,
                                    child: ClipRRect(
                                      borderRadius: kRadius10,
                                      child: ColoredBox(
                                        color: klightgrey.withOpacity(.1),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.memory(
                                            base64.decode(base64String),
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return const Icon(Icons.error);
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(data.brands![index].brandName!),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            );
          }
        }
      },
    );
  }

  // Uint8List _decodeBase64(String input) {

  //   return bytes;
  // }
}
