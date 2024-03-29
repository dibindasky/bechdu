import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/refresh_indicator_custom.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class GlobalProductSearch extends StatefulWidget {
  const GlobalProductSearch({super.key, this.scrollController});
  final ScrollController? scrollController;

  @override
  State<GlobalProductSearch> createState() => _GlobalProductSearchState();
}

class _GlobalProductSearchState extends State<GlobalProductSearch> {
  @override
  void initState() {
    if (widget.scrollController != null) {
      widget.scrollController!.addListener(() {
        widget.scrollController!.animateTo(.1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastEaseInToSlowEaseOut);
        _scrollCallBack();
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    widget.scrollController!.dispose();
    super.dispose();
  }

  _scrollCallBack() {
    if (widget.scrollController!.position.pixels ==
        widget.scrollController!.position.maxScrollExtent) {
      context.read<HomeBloc>().add(const HomeEvent.nextPage());
    }
  }

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
          return RefreshIndicatorCustom(
            message: errorMessage,
            onRefresh: () {},
          );
        } else if (state.products!.isEmpty) {
          return Lottie.asset(emptyLottie);
        }
        final products = state.products!;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridView.builder(
                  controller: widget.scrollController,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      (state.products?.length ?? 0) + (state.loadMore ? 1 : 0),
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    if (state.loadMore && index == state.products!.length) {
                      return Center(child: LoadingAnimation(width: 100));
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
