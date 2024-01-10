import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class SelectedTopImage extends StatelessWidget {
  const SelectedTopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: sWidth * .37,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kGreenPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(
            height: sWidth * .3,
            width: sWidth * .3,
            child: Image.asset(mobileTransperantassetImage),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Iphone 13',
                style: textHeadBold1,
              ),
              kHeight5,
              Text(
                '256 GB | Black',
                style: textHeadMedium1,
              ),
              kHeight5,
              Text(
                '₹ 18,000',
                style: textHeadBold1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
