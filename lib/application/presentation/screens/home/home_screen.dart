import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/presentation/screens/home/best_selling_devices/recomented_home.dart';
import 'package:beachdu/application/presentation/screens/home/courosal_top/caurosal_top.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/custom_search_field.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/join_our_team.dart';
import 'package:beachdu/application/presentation/screens/home/hot_deals/hot_deals.dart';
import 'package:beachdu/application/presentation/screens/home/what_to_sell/what_to_sell.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/confirmation_daillogue/exit_app_dailogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<HomeBloc>().add(const HomeEvent.homePageBanners());
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
          bool shouldPop = await showConfirmationDialog(context);
          return shouldPop;
        },
        child: const Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      kHeight30,
                      CustomSearchFieldHome(),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
