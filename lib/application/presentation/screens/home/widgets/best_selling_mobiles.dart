import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class BestSellingMobiles extends StatelessWidget {
  const BestSellingMobiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Best Selling Mobiles',
          style: textHeadBoldBig,
        ),
        kHeight10,
        SizedBox(
          height: sWidth * 0.40,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Material(
                elevation: 5,
                shadowColor: kBlack,
                child: ColoredBox(
                  color: kWhite,
                  child: Column(
                    children: [
                      SizedBox(
                          width: sWidth * 0.24,
                          child: Image.network(mobileNetworkImage,fit: BoxFit.contain,)),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: sWidth * 0.24),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              children: [
                                Text(
                                  'Samsung S23 ultra',
                                  style: textHeadMedium1.copyWith(fontSize: sWidth * 0.04),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '₹ 50,999',
                                  style: textHeadBold1,
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
