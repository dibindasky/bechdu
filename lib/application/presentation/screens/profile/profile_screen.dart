import 'package:beachdu/application/presentation/screens/profile/widgets/list_contsiners.dart';
import 'package:beachdu/application/presentation/screens/profile/widgets/profile_intro.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: kEmpty,
        centerTitle: true,
        title: Text(
          "Account",
          style: textHeadBoldBig,
        ),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            ProfileIndro(),
            kHeight30,
            ListContainersProfile(
              text: 'Address',
              image: 'assets/images/Favorites_light.png',
            ),
            ListContainersProfile(
              text: 'Support',
              image: 'assets/images/Support.png',
            ),
            ListContainersProfile(
              text: 'Terms and Conditions',
              image: 'assets/images/terms and conditions.png',
            ),
            ListContainersProfile(
              text: 'Privacy Policy',
              image: 'assets/images/visibility.png',
            ),
            ListContainersProfile(
              text: 'Delete Account',
              image: 'assets/images/mesage.png',
            ),
            ListContainersProfile(
              text: 'Log Out',
              image: 'assets/images/sighn out.png',
              colr: kGreenPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
