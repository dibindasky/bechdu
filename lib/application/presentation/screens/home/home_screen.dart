import 'dart:async';
import 'dart:developer';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/internet_connection_check/internet_connection_check_cubit.dart';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/home/best_selling_devices/recomented_home.dart';
import 'package:beachdu/application/presentation/screens/home/courosal_top/caurosal_top.dart';
import 'package:beachdu/application/presentation/screens/home/location/city_choose.dart';
import 'package:beachdu/application/presentation/screens/home/search_feild/custom_search_field.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/join_our_team.dart';
import 'package:beachdu/application/presentation/screens/home/hot_deals/hot_deals.dart';
import 'package:beachdu/application/presentation/screens/home/what_to_sell/what_to_sell.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/confirmation_daillogue/exit_app_dailogue.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/no_internet_banner.dart';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

ValueNotifier<int> homeScreens = ValueNotifier(0);

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final scrollController = ScrollController();
  late Timer _locationCheckTimer;

  @override
  void initState() {
    log('init stae');
    scrollController.addListener(() {
      _scrollCallBack();
    });
    _locationCheckTimer = Timer.periodic(
        const Duration(seconds: 10), _checkLocationAndShowScreen);
    super.initState();
  }

  _scrollCallBack() {
    log('scrollController outside condition');
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      context.read<HomeBloc>().add(const HomeEvent.nextPage());
      log('scrollController');
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    _locationCheckTimer.cancel();
    super.dispose();
  }

  void _checkLocationAndShowScreen(Timer timer) async {
    bool isLocationSelected = await SecureSotrage.getPicodeBool();
    if (!isLocationSelected && homeScreens.value != 1) {
      _locationCheckTimer.cancel();
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ScreenLocations(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<LocationBloc>().add(const LocationEvent.locationPick());
        context.read<HomeBloc>().add(const HomeEvent.homePageBanners());
        context.read<HomeBloc>().add(const HomeEvent.getBestSellingProducts());
        context.read<CategoryBlocBloc>().add(const GetSingleCategoryBrands());
        context.read<HomeBloc>().add(const HomeEvent.getAllCategory());
      },
    );
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          bool shouldPop = await showConfirmationDialog(
            context,
            onPressed: () => Navigator.pop(context),
          );
          return shouldPop;
        },
        child: Scaffold(
          body: SafeArea(
            child: RefreshIndicator(
              onRefresh: () async {
                context
                    .read<LocationBloc>()
                    .add(const LocationEvent.locationPick());
                context.read<HomeBloc>().add(const HomeEvent.homePageBanners());
                context
                    .read<HomeBloc>()
                    .add(const HomeEvent.getBestSellingProducts());
                context
                    .read<CategoryBlocBloc>()
                    .add(const GetSingleCategoryBrands());
                context.read<HomeBloc>().add(const HomeEvent.getAllCategory());
                await Future.delayed(const Duration(seconds: 2));
              },
              child: SingleChildScrollView(
                controller: scrollController,
                child: Stack(
                  children: [
                    BlocListener<InternetConnectionCheckCubit,
                        InternetConnectionCheckState>(
                      listener: (context, state) {
                        if (state is InternetDisconnected) {
                          ScaffoldMessenger.of(context)
                              .showMaterialBanner(noInternetBanner());
                        } else {
                          WidgetsBinding.instance.addPostFrameCallback(
                            (_) {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentMaterialBanner();
                            },
                          );
                        }
                      },
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          if (state.hasError) {
                            return Align(
                              alignment: Alignment.topCenter,
                              child: IconButton(
                                onPressed: () {
                                  context
                                      .read<LocationBloc>()
                                      .add(const LocationEvent.locationPick());
                                  context
                                      .read<HomeBloc>()
                                      .add(const HomeEvent.homePageBanners());
                                  context.read<HomeBloc>().add(
                                      const HomeEvent.getBestSellingProducts());
                                  context
                                      .read<CategoryBlocBloc>()
                                      .add(const GetSingleCategoryBrands());
                                  context
                                      .read<HomeBloc>()
                                      .add(const HomeEvent.getAllCategory());
                                },
                                icon: const Icon(
                                  Icons.refresh,
                                ),
                              ),
                            );
                          }
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              kHeight30,
                              CustomSearchFieldHome(),
                              kHeight30,
                              ValueListenableBuilder(
                                valueListenable: homeScreens,
                                builder: (context, value, child) {
                                  if (value == 0) {
                                    return const AfterSearchWidgets();
                                  } else {
                                    return const GlobalProductSearch();
                                  }
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AfterSearchWidgets extends StatelessWidget {
  const AfterSearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CaurosalViewHomePageOffers(),
        kHeight20,
        WhatToSellWidget(),
        kHeight30,
        BestSellingDevices(),
        kHeight30,
        JoinOurTeam(),
        kHeight20,
        HotDealsSession(),
      ],
    );
  }
}

class GlobalProductSearch extends StatefulWidget {
  const GlobalProductSearch({
    super.key,
  });

  @override
  State<GlobalProductSearch> createState() => _GlobalProductSearchState();
}

class _GlobalProductSearchState extends State<GlobalProductSearch> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.products == null || state.products!.isEmpty) {
          return Center(
            child: Lottie.asset(emptyLottie),
          );
        }
        if (state.products != null || state.products!.isNotEmpty) {
          final products = state.products!;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      state.loadMore ? products.length + 1 : products.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    if (state.loadMore && index == state.products!.length) {
                      return const Center(child: LoadingAnimation(width: 100));
                    }
                    String url =
                        "${ApiEndPoints.baseUrlImagePath}${Uri.encodeComponent(
                      products[index].productImage!,
                    )}";
                    return GestureDetector(
                      onTap: () {
                        context.read<QuestionTabBloc>().newList.clear();
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
                            Text(products[index].variant!,
                                style: textHeadBold1),
                            Text(
                              'Upto ₹${products[index].estimatedPrice}',
                              style: textHeadMedium1.copyWith(
                                  fontSize: sWidth * .034),
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
          );
        } else {
          return Center(
            child: Lottie.asset(emptyLottie),
          );
        }
      },
    );
  }
}
