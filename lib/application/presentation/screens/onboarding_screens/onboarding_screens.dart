import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class BechDuUserOnBoardingScreens extends StatefulWidget {
  const BechDuUserOnBoardingScreens({super.key});

  @override
  State<BechDuUserOnBoardingScreens> createState() =>
      _BechDuUserOnBoardingScreensState();
}

class _BechDuUserOnBoardingScreensState
    extends State<BechDuUserOnBoardingScreens>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    // Create Tween for opacity
    _animation = Tween<double>(begin: 0, end: 2.0).animate(
      _controller,
    );
    super.initState();
  }

  void startAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int selectedIndex = 0;
  final int totalPages = 3;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (selectedIndex < totalPages - 1) {
          setState(() {
            selectedIndex += 1;
          });
        } else {
          Navigator.of(context).pushNamed(Routes.signInOrLogin);
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
