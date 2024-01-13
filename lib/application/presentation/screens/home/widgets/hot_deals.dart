import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class HotDealsSession extends StatelessWidget {
  const HotDealsSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Hot Deals',
            style: textHeadBoldBig,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              final background = index%2==0?const Color.fromARGB(255, 6,0,36):const Color.fromARGB(255, 194,178,154);
              final priceColor = index%2==0?const Color.fromARGB(255, 255, 114, 105):const Color.fromARGB(255, 6,0,36);
              return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Material(
                elevation: 7,
                borderRadius: kRadius10,
                shadowColor: kBlack,
                child: ClipRRect(
                  borderRadius: kRadius10,
                  child: ColoredBox(
                    color: background,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: kRadius10,
                          child: SizedBox(
                            width: double.infinity,
                            height: sWidth * 0.40,
                            child: ColoredBox(
                              color: kBlack,
                              child: Image.asset(
                                index%2==0?homeOfferImage:homeHotDealmage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        kHeight10,
                        Text('Get 20% Extra On Samsung mobiles',
                            style: textHeadSemiBold1.copyWith(color: kWhite)),
                        kHeight10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.star_border,
                                color: textFieldBorderColor),
                            Text('(163 sold in last 7days)',
                                style: textHeadSemiBold1.copyWith(
                                    color: textFieldBorderColor)),
                            kWidth5,
                            const Icon(Icons.access_alarm_rounded,
                                color: textFieldBorderColor),
                            Text('01:04:00 S',
                                style: textHeadSemiBold1.copyWith(
                                    color: textFieldBorderColor)),
                          ],
                        ),
                        kHeight10,
                        Text('₹ 19,999.00', style: textHeadBoldBig.copyWith(color:priceColor)),
                        kHeight5
                      ],
                    ),
                  ),
                ),
              ),
            );
            },
          )
        ],
      ),
    );
  }
}
