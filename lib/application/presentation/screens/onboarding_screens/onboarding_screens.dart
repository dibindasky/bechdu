import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class BechDuUserOnBoardingScreens extends StatefulWidget {
  const BechDuUserOnBoardingScreens({Key? key}) : super(key: key);

  @override
  State<BechDuUserOnBoardingScreens> createState() =>
      _BechDuUserOnBoardingScreensState();
}

class _BechDuUserOnBoardingScreensState
    extends State<BechDuUserOnBoardingScreens>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int selectedIndex = 0;
  final int totalPages = 3;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: _onPageChanged,
        children: [
          buildOnboardingScreen(
              selectedIndex: selectedIndex, totalPages: totalPages),
          buildOnboardingScreen(
              selectedIndex: selectedIndex, totalPages: totalPages),
          buildOnboardingScreen(
              selectedIndex: selectedIndex, totalPages: totalPages),
        ],
      ),
    );
  }

  Widget buildOnboardingScreen({
    required int selectedIndex,
    required int totalPages,
  }) {
    return GestureDetector(
      onTap: () {
        if (selectedIndex < totalPages - 1) {
          _pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        } else {
          Navigator.of(context)
              .pushNamed(Routes.signInOrLogin, arguments: false);
        }
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: sWidth * .19,
                child: Hero(
                  tag: 'logo',
                  child: Image.asset(bechduMainlogo),
                ),
              ),
            ),
            kHeight40,
            if (selectedIndex == 0)
              Stack(
                children: [
                  const Center(
                    child: CircleAvatar(
                      backgroundColor: kGreenPrimary,
                      radius: 90,
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: sWidth * 0.45,
                      child: Image.asset(onBoardingpersonScreen),
                    ),
                  ),
                ],
              ),
            if (selectedIndex == 1)
              Stack(
                children: [
                  const Center(
                    child: CircleAvatar(
                      backgroundColor: kBluePrimary,
                      radius: 87,
                      child: CircleAvatar(
                        backgroundColor: kWhite,
                        radius: 85,
                        child: CircleAvatar(
                          backgroundColor: kBluePrimary,
                          radius: 79,
                          child: CircleAvatar(
                            backgroundColor: kWhite,
                            radius: 77,
                            child: CircleAvatar(
                              backgroundColor: kBluePrimary,
                              radius: 70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: sWidth * 0.45,
                      child: Image.asset(onBoardingsecondScreen),
                    ),
                  ),
                ],
              ),
            if (selectedIndex == 2)
              Center(
                child: SizedBox(
                  height: sWidth * 0.45,
                  child: Image.asset(onBoardingThirdScreen),
                ),
              ),
            kHeight40,
            Text(
              textListFirst[selectedIndex],
              style: textHeadBoldBig.copyWith(color: kBlack),
            ),
            Text(
              textListSecond[selectedIndex],
              style: textHeadBoldBig.copyWith(color: kBlack),
            ),
            Text(
              'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.',
              style: textHeadInter.copyWith(
                color: klightgrey,
              ),
            ),
            kHeight30,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                totalPages,
                (index) => buildPageIndicator(index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPageIndicator(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: SizedBox(
        height: 10,
        child: CircleAvatar(
          radius: selectedIndex == index ? 5 : 3,
          backgroundColor: selectedIndex == index ? kGreenPrimary : kBlack,
        ),
      ),
    );
  }
}
