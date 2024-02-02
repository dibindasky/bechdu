import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CaurosalViewHomePageOffers extends StatefulWidget {
  const CaurosalViewHomePageOffers({
    super.key,
  });

  @override
  State<CaurosalViewHomePageOffers> createState() =>
      _CaurosalViewHomePageOffersState();
}

class _CaurosalViewHomePageOffersState
    extends State<CaurosalViewHomePageOffers> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 4,
          itemBuilder: (context, index, realIndex) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/home screen offer tile .png',
                fit: BoxFit.fill,
              ),
            );
          },
          options: CarouselOptions(
            height: 170,
            autoPlay: true,
            reverse: true,
            autoPlayAnimationDuration: const Duration(seconds: 1),
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
        kHeight10,
        buildIndicator(),
      ],
    );
  }

  buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: selectedIndex,
      count: 4,
      effect: const ExpandingDotsEffect(
        dotWidth: 20,
        activeDotColor: Colors.blue,
        dotHeight: 3,
        dotColor: Colors.blue,
      ),
    );
  }
}
