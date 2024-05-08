import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

bool fromHome = false;

class BestSellingDevices extends StatefulWidget {
  const BestSellingDevices({super.key});

  @override
  State<BestSellingDevices> createState() => _BestSellingDevicesState();
}

class _BestSellingDevicesState extends State<BestSellingDevices> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.bestSellingProductsResponceModel == null ||
                  state.bestSellingProductsResponceModel!.products == null) {
                return kEmpty;
              }
              return Text(
                '   Best Selling',
                style: textHeadBoldBig,
              );
            },
          ),
          kHeight10,
          AspectRatio(
            aspectRatio: 1.8,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.bestSellingLoad) {
                  return const Skeleton(
                    crossAxisCount: 2,
                    itemCount: 2,
                    height: 0,
                  );
                } else if (state.bestSellingProductsResponceModel == null ||
                    state.bestSellingProductsResponceModel?.products == null) {
                  return kEmpty;
                } else if (state
                    .bestSellingProductsResponceModel!.products!.isEmpty) {
                  return kEmpty;
                }
                final data = state.bestSellingProductsResponceModel;
                return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
                  builder: (context, categoryBlocState) {
                    return ListView.builder(
                      itemCount: data!.products!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final items = data.products![index];
                        String url = imageUrlchange(items.productImage!);
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              fromHome = true;
                            });
                            context.read<QuestionTabBloc>().add(
                                const QuestionTabEvent.resetTabSelection());
                            context
                                .read<QuestionTabBloc>()
                                .add(QuestionTabEvent.getQuestions(
                                  categoryType: state
                                      .bestSellingProductsResponceModel!
                                      .products![index]
                                      .categoryType!,
                                  product: data.products![index],
                                ));

                            //Category Assign
                            final categoryType =
                                context.read<CategoryBlocBloc>().categoryType ??
                                    'mobile';
                            context.read<CategoryBlocBloc>().categoryType =
                                categoryType;
                            //Slug assingn
                            context.read<CategoryBlocBloc>().slug =
                                data.products![index].slug!;

                            // Selected product Model assigning
                            context.read<CategoryBlocBloc>().model =
                                data.products![index].model;

                            //Selected product varient assigning
                            context.read<CategoryBlocBloc>().verient =
                                data.products![index].variant;

                            //Selected product image assinging
                            context.read<CategoryBlocBloc>().productImage =
                                data.products![index].productImage;
                            context
                                .read<NavbarCubit>()
                                .changeNavigationIndex(1);
                            //Selected product Slug assigning
                            context
                                .read<PlaceOrderBloc>()
                                .upiIdController
                                .clear();

                            //Builder cahnges
                            secondtabScreensNotifier.value = 1;
                            secondtabScreensNotifier.notifyListeners();
                            brandSeriesProductValueNotifier.value = 0;
                            brandSeriesProductValueNotifier.notifyListeners();
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: ClipRRect(
                              borderRadius: kRadius15,
                              child: ColoredBox(
                                color: textFieldBorderColor.withOpacity(0.210),
                                child: Stack(
                                  children: [
                                    IntrinsicHeight(
                                      //width: sWidth * 0.60,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
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
                                                      style: textHeadBold1
                                                          .copyWith(
                                                              fontSize: 13),
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
              },
            ),
          )
        ],
      ),
    );
  }
}
