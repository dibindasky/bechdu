import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class CaurosalViewHomePageOffers extends StatelessWidget {
  const CaurosalViewHomePageOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ClipRRect(
        borderRadius: kRadius10,
        child: ColoredBox(
          color: kBlack,
          child: AspectRatio(
            aspectRatio: 2.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get Extra',
                        style:
                            textHeadBold1.copyWith(color: kWhite),
                      ),
                      SizedBox(width: sWidth * 0.3,
                        child: FittedBox(
                            child: Text(
                          '10%',
                          style: textHeadBoldBig.copyWith(
                              color: kWhite, fontSize: sWidth * 0.2),
                        )),
                      ),
                    ],
                  ),
                ),
                Image.asset(homeOfferImage),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
