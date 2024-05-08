import 'dart:async';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/internet_connection_check/internet_connection_check_cubit.dart';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/presentation/screens/home/best_selling_devices/best_selling.dart';
import 'package:beachdu/application/presentation/screens/home/courosal_top/caurosal_top.dart';
import 'package:beachdu/application/presentation/screens/home/global_search/global_search.dart';
import 'package:beachdu/application/presentation/screens/home/location/city_choose.dart';
import 'package:beachdu/application/presentation/screens/home/notofication/notification.dart';
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
  bool locationSelected = false;
  final ScrollController controller = ScrollController();

  void _checkLocationAndShowScreen() async {
    bool isLocation = await SecureSotrage.getLocationBool();
    bool isPincode = await SecureSotrage.getPicodeBool();
    bool isSkip = await SecureSotrage.getlocatioSkipBool();
    setState(() {
      locationSelected = isLocation || isPincode || isSkip;
    });
    if (homeScreens.value == 0) {
      if (!locationSelected) {
        Future.delayed(const Duration(seconds: 10), () {
          if (!locationSelected) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ScreenLocations(),
            ));
          }
        });
      }
    }
  }

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent &&
          homeScreens.value == 1) {
        context.read<HomeBloc>().add(const HomeEvent.nextPage());
      }
    });
    _checkLocationAndShowScreen();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (mounted) {
        context
            .read<LocationBloc>()
            .add(const LocationEvent.locationPick(isLoad: false));
        context
            .read<HomeBloc>()
            .add(const HomeEvent.homePageBanners(isLoad: false));
        context
            .read<HomeBloc>()
            .add(const HomeEvent.getBestSellingProducts(isLoad: false));
        context.read<CategoryBlocBloc>().add(
            const CategoryBlocEvent.getSingleCategoryBrands(isLoad: false));
        context
            .read<HomeBloc>()
            .add(const HomeEvent.getAllCategory(isLoad: false));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
            homeScreens.value = 0;
            homeScreens.notifyListeners();
            context.read<HomeBloc>().globalProductSearchController.clear();
            return false;
          }
          return true;
        },
        child: Scaffold(
          body: SafeArea(
            child: RefreshIndicator(
              onRefresh: () async {
                context
                    .read<HomeBloc>()
                    .add(const HomeEvent.notification(reset: false));
                context
                    .read<HomeBloc>()
                    .add(const HomeEvent.homePageBanners(isLoad: true));
                context
                    .read<HomeBloc>()
                    .add(const HomeEvent.getBestSellingProducts(isLoad: true));
                context.read<CategoryBlocBloc>().add(
                    const CategoryBlocEvent.getSingleCategoryBrands(
                        isLoad: true));
                context
                    .read<HomeBloc>()
                    .add(const HomeEvent.getAllCategory(isLoad: true));
                await Future.delayed(const Duration(seconds: 1));
              },
              child: SingleChildScrollView(
                controller: controller,
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
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              kHeight20,
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
                                  } else if (value == 1) {
                                    return const GlobalProductSearch();
                                  } else {
                                    return const NotiiFicationScreen();
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
