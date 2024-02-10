import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:flutter/material.dart';

class TopImage extends StatelessWidget {
  const TopImage({super.key, required this.fromWhere});

  final FromWhere fromWhere;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -30,
          right: 59,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: kBlueLight.withOpacity(.16),
          ),
        ),
        Positioned(
          left: 150,
          bottom: -20,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: kBlueLight.withOpacity(.15),
          ),
        ),
        SizedBox(
          height: sWidth * .37,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ColoredBox(
              color: kGreenPrimary.withOpacity(.73),
              child: Row(
                children: [
                  SizedBox(
                    height: sWidth * .3,
                    width: sWidth * .25,
                    child: Image.asset(mobileTransperantassetImage),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (fromWhere == FromWhere.questionScreen ||
                          fromWhere == FromWhere.recalculateWithAmount)
                        Row(
                          children: [
                            Text(
                              'Iphone 13',
                              style: textHeadBold1.copyWith(color: kWhite),
                            ),
                            kWidth10,
                            Text(
                              '256 GB | Black',
                              style: textHeadMedium1.copyWith(color: kWhite),
                            ),
                          ],
                        ),
                      if (fromWhere == FromWhere.recalculateWithAmount)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '18,800',
                              style: textHeadBoldBig.copyWith(color: kWhite),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: sWidth * .36,
                                  child: Text(
                                    'Not Satisfied with our price ?',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        textHeadMedium1.copyWith(color: kWhite),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    secondtabScreensNotifier.value = 1;
                                    secondtabScreensNotifier.notifyListeners();
                                  },
                                  child: Text(
                                    'Recalculate',
                                    style: textHeadInter.copyWith(
                                      color: kWhite,
                                      decoration: TextDecoration.underline,
                                      decorationColor: kWhite,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      if (fromWhere == FromWhere.checkoutAndPickupScreen)
                        Text(
                          'Iphone 13',
                          style: textHeadBold1.copyWith(color: kWhite),
                        ),
                      kHeight5,
                      if (fromWhere == FromWhere.checkoutAndPickupScreen)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '256 GB | Black',
                              style: textHeadMedium1.copyWith(color: kWhite),
                            ),
                            Text(
                              '18,800',
                              style: textHeadBoldBig.copyWith(color: kWhite),
                            )
                          ],
                        ),
                      kHeight5,
                      if (fromWhere == FromWhere.questionScreen)
                        Text(
                          'Divice Diagnosis',
                          style: textHeadBoldBig.copyWith(color: kWhite),
                        )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
