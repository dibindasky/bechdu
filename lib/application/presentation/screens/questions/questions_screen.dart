import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenQuestions extends StatelessWidget {
  const ScreenQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: kRadius10,
            child: ColoredBox(
              color: kGreenPrimary,
              child: SizedBox(
                height: sWidth * 0.50,
                width: sWidth,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.network(mobileWithOutBackgroundNetwork),
                      Column(
                        children: [Text('Iphone 13 ',style: textHeadRegular1.copyWith(color: kWhite),)],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
