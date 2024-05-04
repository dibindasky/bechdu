import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            selectedIndex: selectedIndex,
            totalPages: totalPages,
          ),
          buildOnboardingScreen(
            selectedIndex: selectedIndex,
            totalPages: totalPages,
          ),
          buildOnboardingScreen(
            selectedIndex: selectedIndex,
            totalPages: totalPages,
          ),
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
            curve: Curves.easeInOut,
          );
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: sHeight * .9,
                child: Column(
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
                    SizedBox(
                      width: sWidth * 0.7,
                      height: sWidth * 0.6,
                      child: selectedIndex == 0
                          ? SizedBox(
                              child: Image.asset(
                                onBoardingpersonScreen,
                                fit: BoxFit.cover,
                              ),
                            )
                          : selectedIndex == 1
                              ? SizedBox(
                                  height: sWidth * 0.45,
                                  child: Image.asset(onBoardingsecondScreen),
                                )
                              : selectedIndex == 2
                                  ? Stack(
                                      children: [
                                        const Center(
                                          child: CircleAvatar(
                                            backgroundColor: kBluePrimary,
                                            radius: 70,
                                          ),
                                        ),
                                        Positioned(
                                          top: -30,
                                          bottom: 0,
                                          left: -10,
                                          right: 0,
                                          child: Center(
                                            child: SizedBox(
                                              height: sWidth * 0.9,
                                              child: Image.asset(
                                                  onBoardingThirdScreen),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : const SizedBox(),
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
                  ],
                ),
              ),
              selectedIndex == 2
                  ? CustomButton(
                      onPressed: () {
                        context.read<AuthBloc>().phoneNumberController.clear();
                        context.read<AuthBloc>().otpController.clear();
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.onBoardBool());
                        Navigator.of(context).pushReplacementNamed(
                          Routes.signInOrLogin,
                          arguments: LoginWay.fromInitial,
                        );
                      },
                      text: 'Get Started',
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        totalPages,
                        (index) => buildPageIndicator(index),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPageIndicator(int index) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: CircleAvatar(
          radius: selectedIndex == index ? 7 : 3,
          backgroundColor: selectedIndex == index ? kGreenPrimary : kBlack,
        ));
  }
}
