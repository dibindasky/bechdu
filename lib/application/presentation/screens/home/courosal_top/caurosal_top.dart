import 'dart:convert';
import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CaurosalViewHomePageOffers extends StatefulWidget {
  const CaurosalViewHomePageOffers({
    super.key,
  });

  @override
  State<CaurosalViewHomePageOffers> createState() =>
      _CaurosalViewHomePageOffersState();
}

class _CaurosalViewHomePageOffersState
    extends State<CaurosalViewHomePageOffers> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<HomeBloc>().add(const HomeEvent.homePageBanners());
      },
    );
    return Column(
      children: [
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Skeleton(
                crossAxisCount: 2,
                itemCount: 2,
                height: 0,
              );
            } else {
              if (state.homeBannerResponceModel != null) {
                return Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount:
                          state.homeBannerResponceModel!.sectionOne!.length,
                      itemBuilder: (context, index, realIndex) {
                        final data = state.homeBannerResponceModel!.sectionOne!;
                        String base64String = data[index].image!;
                        base64String = base64String.replaceFirst(
                            RegExp(r'data:image/[^;]+;base64,'), '');
                        final heading =
                            data[index].heading!.replaceAll('<br/>', '');
                        return InkWell(
                          onTap: () {
                            context.read<QuestionTabBloc>().newList.clear();
                            context
                                .read<CategoryBlocBloc>()
                                .add(GetSingleCategoryBrands(
                                  categoryType: data[index].mobileLink,
                                ));

                            context.read<CategoryBlocBloc>().categoryType =
                                data[index].mobileLink!;

                            log('UI state.homeBannerResponceModel!.sectionOne![index].mobileLink! ===>>> : ${state.homeBannerResponceModel!.sectionOne![index].mobileLink!}');
                            context
                                .read<NavbarCubit>()
                                .changeNavigationIndex(1);
                            brandSeriesProductValueNotifier.value = 0;
                            brandSeriesProductValueNotifier.notifyListeners();
                            secondtabScreensNotifier.value = 0;
                            secondtabScreensNotifier.notifyListeners();
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 4, right: 4),
                            width: sWidth,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 69, 177, 244),
                              borderRadius: kRadius15,
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top:
                                      -0, // Adjusted top position for slight overlap
                                  right: 10,
                                  child: SizedBox(
                                    height: 80,
                                    width: 70,
                                    child: Image.memory(
                                      base64.decode(base64String),
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return const Icon(Icons.error);
                                      },
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 14,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: sWidth * .6,
                                          child: Text(
                                            heading,
                                            style: textHeadMedium1.copyWith(
                                              color: kWhite,
                                            ),
                                          ),
                                        ),
                                        kHeight10,
                                        ClipRRect(
                                          borderRadius: kRadius5,
                                          child: ColoredBox(
                                            color: kBlueLight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(
                                                '${data[index].buttonText}',
                                                style:
                                                    textHeadSemiBold1.copyWith(
                                                  color: kWhite,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: 170,
                        autoPlay: true,
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                    ),
                    kHeight10,
                    buildIndicator(
                      state.homeBannerResponceModel!.sectionOne!.length,
                    ),
                  ],
                );
              } else {
                return const Skeleton(
                    crossAxisCount: 2, itemCount: 2, height: 0);
              }
            }
          },
        ),
      ],
    );
  }

  buildIndicator(int count) {
    return AnimatedSmoothIndicator(
      activeIndex: selectedIndex,
      count: count,
      effect: const ExpandingDotsEffect(
        dotWidth: 20,
        activeDotColor: Colors.blue,
        dotHeight: 3,
        dotColor: Colors.blue,
      ),
    );
  }
}
