import 'package:beachdu/application/presentation/screens/home/widgets/best_selling_mobiles.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/custom_search_field.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/join_our_team.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/location_picker.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/offers.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/what_to_sell.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LocationChooser(),
              kHeight30,
              CustomSearchFieldHome(),
              kHeight30,
              WhatToSellWidget(),
              kHeight40,
              BestSellingMobiles(),
              kHeight40,
              OffersSession(),
              kHeight30,
              JoinOurTeam()
            ],
          ),
        ),
      ),
    );
  }
}
