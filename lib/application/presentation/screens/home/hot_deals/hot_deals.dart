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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotDealsSession extends StatelessWidget {
  const HotDealsSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Hot Deals', style: textHeadBoldBig),
          kHeight5,
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Skeleton(
                  crossAxisCount: 1,
                  itemCount: 2,
                  height: 50,
                );
              } else {
                if (state.homeBannerResponceModel != null &&
                    state.homeBannerResponceModel!.sectionOne != null) {
                  return ListView.builder(
                    padding: const EdgeInsets.only(top: 5),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                        state.homeBannerResponceModel!.sectionTwo!.length,
                    itemBuilder: (context, index) {
                      final data = state.homeBannerResponceModel!.sectionTwo;
                      String base64String = data![index].image!;
                      base64String = base64String.replaceFirst(
                          RegExp(r'data:image/[^;]+;base64,'), '');
                      final background = index % 2 == 0
                          ? const Color.fromARGB(255, 6, 0, 36)
                          : const Color.fromARGB(255, 194, 178, 154);
                      final priceColor = index % 2 == 0
                          ? const Color.fromARGB(255, 255, 114, 105)
                          : const Color.fromARGB(255, 6, 0, 36);
                      return GestureDetector(
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
                          context.read<NavbarCubit>().changeNavigationIndex(1);
                          brandSeriesProductValueNotifier.value = 0;
                          brandSeriesProductValueNotifier.notifyListeners();
                          secondtabScreensNotifier.value = 0;
                          secondtabScreensNotifier.notifyListeners();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 10),
                          child: Material(
                            elevation: 7,
                            borderRadius: kRadius10,
                            shadowColor: kBlack,
                            child: ClipRRect(
                              borderRadius: kRadius10,
                              child: ColoredBox(
                                color: background,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: kRadius10,
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: sWidth * 0.40,
                                        child: ColoredBox(
                                          color: kBlack,
                                          child: Image.memory(
                                            base64.decode(base64String),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    kHeight10,
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal:
                                              16.0), // Adjust padding as needed
                                      child: Center(
                                          child: Text(data[index].heading!,
                                              style: textHeadSemiBold1.copyWith(
                                                  color: kWhite))),
                                    ),
                                    kHeight10,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.star_border,
                                            color: textFieldBorderColor),
                                        Text('(163 sold in last 7days)',
                                            style: textHeadSemiBold1.copyWith(
                                                color: textFieldBorderColor)),
                                        kWidth5,
                                        const Icon(Icons.access_alarm_rounded,
                                            color: textFieldBorderColor),
                                        Text('01:04:00 S',
                                            style: textHeadSemiBold1.copyWith(
                                                color: textFieldBorderColor)),
                                      ],
                                    ),
                                    kHeight10,
                                    Text(data[index].buttonText!,
                                        style: textHeadBoldBig.copyWith(
                                            color: priceColor)),
                                    kHeight5
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Skeleton(
                    crossAxisCount: 2,
                    itemCount: 2,
                    height: 0,
                  );
                }
              }
            },
          )
        ],
      ),
    );
  }
}
