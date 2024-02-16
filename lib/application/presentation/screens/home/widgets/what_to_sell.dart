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
            style: textHeadBoldBig.copyWith(color: kBlack),
          ),
          kHeight20,
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: gridData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: 5,
            ),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  //context.read<NavbarCubit>().changeNavigationIndex(1);
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: klightwhite,
                        borderRadius: kRadius5,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(gridData[index][1]),
                      ),
                    ),
                    kHeight5,
                    Text(
                      gridData[index][0],
                      style: textHeadMedium1.copyWith(fontSize: sWidth * .03),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

List<List> gridData = [
  ['Mobile', 'assets/images/home category mobile.png'],
  ['Laptop', 'assets/images/home category laptop.png'],
  ['Pods', 'assets/images/home category  headset.png'],
  ['Watch', 'assets/images/home category  watch.png'],
  ['Repair', 'assets/images/home category repair.png']
];
