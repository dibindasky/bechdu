import 'dart:async';

import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/hero/hero_animation.dart';
import 'package:beachdu/application/presentation/utils/hero/hero_tag.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ScreenProductPreview extends StatelessWidget {
  const ScreenProductPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Stack(
            children: [
              Positioned(
                  top: -90,
                  right: -150,
                  child: CircleAvatar(
                    radius: 150,
                    backgroundColor: kGreenPrimary,
                  )),
              Positioned(
                  bottom: -90,
                  left: -90,
                  child: CircleAvatar(
                    radius: 150,
                    backgroundColor: kGreenPrimary,
                  )),
              PreviewDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

class PreviewDetails extends StatefulWidget {
  const PreviewDetails({
    super.key,
  });

  @override
  State<PreviewDetails> createState() => _PreviewDetailsState();
}

class _PreviewDetailsState extends State<PreviewDetails> {
  double height = 0.8;
  bool showItems = false;

  @override
  void initState() {
    changeHeight();
    super.initState();
  }

  changeHeight() {
    Timer(const Duration(microseconds: 1), () {
      setState(() {
        height = 1.2;
      });
    });
    Timer(const Duration(milliseconds: 200), () {
      setState(() {
       showItems = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadius10,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: sWidth,
        height: sWidth * height,
        child: ColoredBox(
          color: kGreenPrimary.withOpacity(0.93),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeroWidget(
                    tag: HeroTag.text('Iphone 13'),
                    child: Text(
                      'Iphone 13',
                      style: textHeadBold1.copyWith(
                          color: kWhite, fontSize: sWidth * 0.085),
                    ),
                  ),
                  HeroWidget(
                    tag: HeroTag.text('256 GB | Black'),
                    child: Text(
                      '256 GB | Black',
                      style: textHeadMedium1.copyWith(
                          color: kWhite, fontSize: sWidth * 0.045),
                    ),
                  ),
                  kHeight10,
                  SizedBox(
                    height: sWidth * 0.4,
                    child: FittedBox(
                      child: HeroWidget(
                          tag: HeroTag.image(mobileWithOutBackgroundNetwork),
                          child: Image.network(mobileWithOutBackgroundNetwork)),
                    ),
                  ),
                  kHeight10,
                  showItems
                      ? Text(
                          '₹ 18,000',
                          style: textHeadBold1.copyWith(
                              color: kWhite, fontSize: sWidth * 0.085),
                        )
                      : kEmpty,
                  kHeight10,
                  showItems
                      ? Row(
                          children: [
                            Text(
                              'Not Satisfied With our Price ?',
                              style: textHeadMedium1.copyWith(
                                  color: kWhite, fontSize: sWidth * 0.03),
                            ),
                            kWidth5,
                            Text(
                              'Recalculate',
                              style: textHeadBold1.copyWith(
                                  color: kWhite,
                                  decoration: TextDecoration.underline,
                                  decorationColor: kWhite),
                            )
                          ],
                        )
                      : kEmpty,
                  kHeight20,
                  showItems
                      ? ElevatedButtonLong(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, Routes.pickUpDetailScreen);
                          },
                          text: 'Place Order')
                      : kEmpty
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
