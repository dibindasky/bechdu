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
          SizedBox(
            height: sWidth * 0.20,
            child: Center(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (context, index) => kWidth20,
                itemBuilder: (context, index) => Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(left: 10)
                      : const EdgeInsets.all(0),
                  child: Material(
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
                            gridData[index][1],
                            Text(
                              gridData[index][0],
                              style: textHeadBold1.copyWith(
                                fontSize: sWidth * 0.025,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
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
