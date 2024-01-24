import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/hero/hero_animation.dart';
import 'package:beachdu/application/presentation/utils/hero/hero_tag.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadius10,
      child: ColoredBox(
        color: kGreenPrimary,
        child: SizedBox(
          height: sWidth * 0.34,
          width: sWidth,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kWidth20,
              SizedBox(
                height: sWidth * 0.2,
                width: sWidth * 0.15,
                child: FittedBox(
                  child: HeroWidget(
                    tag: HeroTag.image(
                      mobileWithOutBackgroundNetwork,
                    ),
                    child: Image.network(
                      mobileWithOutBackgroundNetwork,
                    ),
                  ),
                ),
              ),
              kWidth20,
              SizedBox(
                width: sWidth * 0.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeroWidget(
                            tag: HeroTag.text('Iphone 13'),
                            child: Text(
                              'Iphone 13',
                              style: textHeadRegular1.copyWith(
                                color: kWhite,
                                fontSize: sWidth * 0.05,
                              ),
                            ),
                          ),
                          kWidth5,
                          HeroWidget(
                            tag: HeroTag.text('256 GB | Black'),
                            child: Text(
                              '256 GB | Black',
                              style: textHeadMedium1.copyWith(
                                color: kWhite,
                                fontSize: sWidth * 0.035,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      '₹ 18,999',
                      style: textHeadBold1.copyWith(
                        color: kWhite,
                        fontSize: sWidth * 0.06,
                      ),
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          Text(
                            'Not Satisfied With our Price ?',
                            style: textHeadBold1.copyWith(
                              color: kWhite,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Recalculate',
                              style: textHeadBold1.copyWith(
                                color: kWhite,
                                decoration: TextDecoration.underline,
                                decorationColor: kWhite,
                                decorationThickness: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
