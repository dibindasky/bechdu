import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class QuestionTopImage extends StatelessWidget {
  const QuestionTopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ClipRRect(
        borderRadius: kRadius10,
        child: ColoredBox(
          color: kGreenPrimary,
          child: SizedBox(
            height: sWidth * 0.40,
            width: sWidth,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  kWidth20,
                  SizedBox(
                    height: sWidth * 0.23,
                    width: sWidth * 0.13,
                    child: Image.asset(mobileTransperantassetImage),
                  ),
                  kWidth10,
                  SizedBox(
                    width: sWidth * 0.45,
                    child: FittedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Iphone 13',
                                style: textHeadRegular1.copyWith(
                                  color: kWhite,
                                  fontSize: sWidth * 0.045,
                                ),
                              ),
                              kWidth5,
                              Text(
                                '256 GB | Black',
                                style: textHeadMedium1.copyWith(
                                    color: kWhite, fontSize: sWidth * 0.03),
                              )
                            ],
                          ),
                          Text(
                            'Device Diagnosis',
                            style: textHeadBold1.copyWith(
                              color: kWhite,
                              fontSize: sWidth * 0.056,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: kWhite,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
