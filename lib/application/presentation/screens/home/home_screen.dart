import 'package:beachdu/application/presentation/screens/home/widgets/recomented_home.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/caurosal_offers_home.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/custom_search_field.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/join_our_team.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/location_picker.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/offers.dart';
import 'package:beachdu/application/presentation/screens/home/widgets/what_to_sell.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kGreenPrimary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: sHeight *0.6, width: double.infinity,
                color: kGreenPrimary,
                //     child: ClipPath(
                //       clipper: CustomShapeClipper(),
                // child: Container(
                //   height: 200,
                //   color: kWhite,
                // ),
              ),
            ),
            Column(
              children: [
                //LocationChooser(),
                kHeight30,
                kHeight30,
                CustomSearchFieldHome(),
                kHeight30,
                CaurosalViewHomePageOffers(),
                kHeight30,
                WhatToSellWidget(),
                kHeight40,
                RecommendedMobile(),
                kHeight40,
                OffersSession(),
                kHeight30,
                JoinOurTeam()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Starting point at the top-left
    path.moveTo(0, 0);

    // Straight line to the bottom-left
    path.lineTo(0, size.height);

    // Curve from bottom-left to left-bottom corner
    path.quadraticBezierTo(0, size.height - 20, 20, size.height);

    // Wave pattern from left-top to bottom-right
    for (double i = 20; i < size.width; i += 20) {
      path.lineTo(i + 10, (i % 40 == 0) ? size.height - 10 : 10);
      path.lineTo(i + 20, (i % 40 == 0) ? size.height : 0);
    }

    // Straight line to the bottom-right
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
