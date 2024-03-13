// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:developer';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/internet_connection_check/internet_connection_check_cubit.dart';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';

import 'package:beachdu/application/presentation/screens/home/best_selling_devices/recomented_home.dart';
import 'package:beachdu/application/presentation/screens/home/courosal_top/caurosal_top.dart';
import 'package:beachdu/application/presentation/screens/home/global_search/global_search.dart';
import 'package:beachdu/application/presentation/screens/home/location/city_choose.dart';
import 'package:beachdu/application/presentation/screens/home/search_feild/custom_search_field.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/join_our_team.dart';
import 'package:beachdu/application/presentation/screens/home/hot_deals/hot_deals.dart';
import 'package:beachdu/application/presentation/screens/home/what_to_sell/what_to_sell.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/no_internet_banner.dart';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

ValueNotifier<int> homeScreens = ValueNotifier(0);

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final scrollController = ScrollController();

  @override
  void initState() {
    log('init state');
    scrollController.addListener(() {
      _scrollCallBack();
    });
    // Future.delayed(
    //   const Duration(seconds: 10),
    // ).then((value) => _checkLocationAndShowScreen);
    super.initState();
  }

  _scrollCallBack() {
    log('scrollController outside condition');
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        !context.read<HomeBloc>().isScrollLoading) {
      context.read<HomeBloc>().add(const HomeEvent.nextPage());
      log('scrollController');
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  // void _checkLocationAndShowScreen(Timer timer) async {
  //   bool isLocationSelected = await SecureSotrage.getPicodeBool();
  //   if (!isLocationSelected && homeScreens.value != 1) {
  //     _locationCheckTimer.cancel();
  //     Navigator.of(context).push(MaterialPageRoute(
  //       builder: (context) => const ScreenLocations(),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        bool islocation = await SecureSotrage.getPicodeBool();
        if (!islocation) {
          Future.delayed(const Duration(seconds: 10))
              .then((value) => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ScreenLocations(),
                  )));
        }
        context.read<LocationBloc>().add(const LocationEvent.locationPick());
        context.read<HomeBloc>().add(const HomeEvent.homePageBanners());
        context.read<HomeBloc>().add(const HomeEvent.getBestSellingProducts());
        context
            .read<CategoryBlocBloc>()
            .add(const CategoryBlocEvent.getSingleCategoryBrands());
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
          if (homeScreens.value == 1) {
            homeScreens.value == 0;
            homeScreens.notifyListeners();
          }
          return true;
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
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
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
                              CustomSearchFieldHome(),
                              kHeight20,
                              ValueListenableBuilder(
                                valueListenable: homeScreens,
                                builder: (context, value, child) {
                                  if (value == 0) {
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
