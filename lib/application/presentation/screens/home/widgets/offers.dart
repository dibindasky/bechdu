import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class OffersSession extends StatelessWidget {
  const OffersSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'New Year Offers',
          style: textHeadBold1.copyWith(fontSize: sWidth * 0.05),
        ),
        kHeight10,
        SizedBox(
          height: sWidth * 0.36,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: index == 0
                  ? const EdgeInsets.only(left: 15, right: 5)
                  : const EdgeInsets.symmetric(horizontal: 5),
              child: Material(
                elevation: 7,
                borderRadius: kRadius10,
                shadowColor: kBlack,
                child: ClipRRect(
                  borderRadius: kRadius10,
                  child: ColoredBox(
                    color: index % 2 == 0 ? kBluePrimary : kGreenPrimary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: sWidth * 0.38,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                        borderRadius: kRadius10,
                                        child: SizedBox(
                                          height: sWidth * 0.07,
                                          width: sWidth * 0.07,
                                          child: const ColoredBox(
                                            color: kWhite,
                                            child: Center(
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                color: kBlack,
                                              ),
                                            ),
                                          ),
                                        )),
                                    kWidth10,
                                    Text(
                                      'All matches',
                                      style: textHeadRegular1.copyWith(
                                          color: kWhite),
                                    ),
                                  ],
                                ),
                                kHeight10,
                                Text(
                                  'OFFER\nNUMBER ${index + 1}',
                                  style: textHeadBold1.copyWith(
                                      fontSize: sWidth * 0.055, color: kWhite),
                                ),
                              ]),
                        ),
                        kWidth10,
                        ClipRRect(
                          borderRadius: kRadius10,
                          child: SizedBox(
                            width: sWidth * 0.30,
                            height: sWidth * 0.40,
                            child: ColoredBox(
                              color: kBlack,
                              child: Image.network(
                                mobileNetworkImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
