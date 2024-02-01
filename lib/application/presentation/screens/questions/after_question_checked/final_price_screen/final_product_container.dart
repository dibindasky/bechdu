import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class FinalProductContiner extends StatelessWidget {
  const FinalProductContiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadius10,
      child: ColoredBox(
        color: kGreenPrimary,
        child: SizedBox(
          height: sWidth * 0.4,
          width: sWidth,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kWidth20,
              SizedBox(
                height: sWidth * 0.4,
                width: sWidth * 0.13,
                child: Image.asset(
                  mobileTransperantassetImage,
                ),
              ),
              kWidth20,
              SizedBox(
                width: sWidth * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Iphone 13',
                      style: textHeadRegular1.copyWith(
                        color: kWhite,
                        fontSize: sWidth * 0.05,
                      ),
                    ),
                    kWidth5,
                    Text(
                      '256 GB | Black',
                      style: textHeadRegular1.copyWith(
                        color: kWhite,
                        fontSize: sWidth * 0.03,
                      ),
                    ),
                    Text(
                      '₹ 18,999',
                      style: textHeadBold1.copyWith(
                        color: kWhite,
                        fontSize: sWidth * 0.06,
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
