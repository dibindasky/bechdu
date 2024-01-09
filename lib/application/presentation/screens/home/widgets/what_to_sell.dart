import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class WhatToSellWidget extends StatelessWidget {
  const WhatToSellWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Text(
            'What Do you Want To Sell ?',
            style: textHeadBold1.copyWith(fontSize: sWidth * 0.06),
          ),
          kHeight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              circleBrorderButtons(text: gridData[0][0], icon: gridData[0][1]),
              circleBrorderButtons(text: gridData[1][0], icon: gridData[1][1]),
              circleBrorderButtons(text: gridData[2][0], icon: gridData[2][1]),
              circleBrorderButtons(text: gridData[3][0], icon: gridData[3][1]),
            ],
          )
        ],
      ),
    );
  }

  Widget circleBrorderButtons({required String text, required Widget icon}) {
    return Material(
      shadowColor: kBlack,
      elevation: 5,
      borderRadius: BorderRadius.circular(350),
      child: CircleAvatar(
        radius: sWidth * 0.10,
        backgroundColor: kGreenPrimary,
        child: CircleAvatar(
          radius: sWidth * 0.09,
          backgroundColor: kWhite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icon,
              Text(
                text,
                style: textHeadBold1.copyWith(fontSize: sWidth * 0.025),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<List> gridData = [
  ['Mobile', const Icon(Icons.phone_android_sharp)],
  ['laptop', const Icon(Icons.laptop)],
  ['Tablet', const Icon(Icons.tablet_android)],
  [
    'Earbuds',
    const Icon(Icons.earbuds),
  ],
];
