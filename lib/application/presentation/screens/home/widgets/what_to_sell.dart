import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WhatToSellWidget extends StatelessWidget {
  const WhatToSellWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What Do You Wanna Do Today ?',
            style:
                textHeadBoldBig.copyWith(color: kBlack, fontSize: sWidth * .04),
          ),
          kHeight20,
          GridView.builder(
            padding: const EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: gridData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1.4,
              crossAxisCount: 5,
            ),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return BlocBuilder<NavbarCubit, NavbarState>(
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      context.read<NavbarCubit>().changeNavigationIndex(1);
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 65,
                          decoration: BoxDecoration(
                            color: klightwhite,
                            borderRadius: kRadius5,
                          ),
                          child: Image.asset(gridData[index][1]),
                        ),
                        kHeight5,
                        Text(
                          gridData[index][0],
                          style: textHeadMedium1.copyWith(
                            fontSize: sWidth * .026,
                          ),
                        ),
                      ],
                    ),
                  );
                },
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
  ['Repair', 'assets/images/home category repair.png'],
];
