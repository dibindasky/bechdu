import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/hero/hero_animation.dart';
import 'package:beachdu/application/presentation/utils/hero/hero_tag.dart';
import 'package:flutter/material.dart';

class SelectedTopImage extends StatelessWidget {
  const SelectedTopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: sWidth * .37,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ColoredBox(
            color: kGreenPrimary.withOpacity(.73),
            child: Row(
              children: [
                SizedBox(
                  height: sWidth * .3,
                  width: sWidth * .3,
                  child: HeroWidget(
                      tag: HeroTag.image(mobileTransperantassetImage),
                      child: Image.asset(mobileTransperantassetImage)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HeroWidget(
                      tag: HeroTag.text('Iphone 13'),
                      child: Text(
                        'Iphone 13',
                        style: textHeadBold1.copyWith(color: kWhite),
                      ),
                    ),
                    kHeight5,
                    HeroWidget(
                      tag: HeroTag.text('256 GB | Black'),
                      child: Text(
                        '256 GB | Black',
                        style: textHeadMedium1.copyWith(color: kWhite),
                      ),
                    ),
                    kHeight5,
                    Text(
                      '₹ 18,000',
                      style: textHeadBold1.copyWith(color: kWhite),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
