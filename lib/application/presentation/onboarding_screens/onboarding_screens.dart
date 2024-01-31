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
  late AnimationController _logoAnimationController;
  late Animation<Offset> _logoAnimation;
  late Animation<double> _textOpacityAnimation;

  int currentPage = 0;
  final int totalPages = 3;

  @override
  void initState() {
    _logoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ),
    );
    _logoAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -2),
    ).animate(
      CurvedAnimation(
        parent: _logoAnimationController,
        curve: Curves.linear,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _logoAnimationController.dispose();
    super.dispose();
  }

  List<String> textListFirst = [
    'Hi There!',
    'Want to sell',
    'Say No More!',
  ];
  List<String> textListSecond = [
    'Welcome to Bechdu!',
    'your phone for a better ?',
    'Bechdu It!',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (currentPage < totalPages - 1) {
          setState(() {
            currentPage += 1;
          });
        } else {
          Navigator.of(context).pushNamed(Routes.bottomBar);
        }
      },
      child: Scaffold(
        backgroundColor: kBlack,
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
            Stack(
              children: [
                const Center(
                  child: CircleAvatar(
                    backgroundColor: kGreenPrimary,
                    radius: 90,
                  ),
                ),
                SlideTransition(
                  position: _logoAnimation,
                  child: Center(
                    child: SizedBox(
                      height: sWidth * 0.45,
                      child: Image.asset(onBoardingpersonScreen),
                    ),
                  ),
                ),
              ],
            ),
            kHeight40,
            AnimatedOpacity(
              opacity: .9,
              duration: const Duration(milliseconds: 100),
              child: Column(
                children: [
                  Text(
                    textListFirst[currentPage],
                    style: textHeadBoldBig.copyWith(color: kWhite),
                  ),
                  Text(
                    textListSecond[currentPage],
                    style: textHeadBoldBig.copyWith(color: kWhite),
                  ),
                ],
              ),
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
      child: CircleAvatar(
        radius: currentPage == index ? 8 : 5,
        backgroundColor: currentPage == index ? kGreenPrimary : kWhite,
      ),
    );
  }
}
