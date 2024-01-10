import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductPreviewQuestion extends StatelessWidget {
  const ProductPreviewQuestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
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
                    height: sWidth * 0.30,
                    width: sWidth * 0.22,
                    child: FittedBox(
                      child:
                          Image.network(mobileWithOutBackgroundNetwork),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Iphone 13',
                            style: textHeadRegular1.copyWith(
                                color: kWhite, fontSize: sWidth * 0.055),
                          ),
                          kWidth5,
                          Text(
                            '256 GB | Black',
                            style: textHeadMedium1.copyWith(
                                color: kWhite, fontSize: sWidth * 0.035),
                          )
                        ],
                      ),
                      Text(
                        'Device Diagnosis',
                        style: textHeadBold1.copyWith(
                            color: kWhite, fontSize: sWidth * 0.065),
                      )
                    ],
                  ),
                  const Spacer(),
                  const RotatedBox(
                      quarterTurns: 1,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: kWhite,
                      )),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
