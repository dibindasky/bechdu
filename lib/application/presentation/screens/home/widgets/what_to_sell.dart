import 'package:beachdu/application/presentation/routes/routes.dart';
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
            'What Do You Wanna Do Today ?',
            style: textHeadBoldBig.copyWith(color: kWhite),
          ),
          kHeight20,
          Container(
            decoration: BoxDecoration(
              color: kWhite.withOpacity(0.6),
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  30,
                ),
              ),
              border: Border.all(
                color: kBluePrimary,
                width: 2,
              ),
            ),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 3,
              ),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.searchScreen);
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: kGreenPrimary,
                          borderRadius: kRadius5,
                          border: Border.all(
                            color: kBluePrimary,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: gridData[index % 4][1],
                        ),
                      ),
                      kHeight5,
                      Text(
                        gridData[index % 4][0],
                        style: textHeadMedium1,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<List> gridData = [
  ['Mobile', const Icon(Icons.phone_android_sharp, color: kWhite)],
  ['laptop', const Icon(Icons.laptop, color: kWhite)],
  ['Tablet', const Icon(Icons.tablet_android, color: kWhite)],
  [
    'Earbuds',
    const Icon(Icons.earbuds, color: kWhite),
  ],
];
