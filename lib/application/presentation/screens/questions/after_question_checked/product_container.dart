import 'package:beachdu/application/presentation/screens/navbar/bottombar.dart';
import 'package:beachdu/application/presentation/screens/questions/dynamic_tabs/questions_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadius10,
      child: ColoredBox(
        color: kGreenPrimary,
        child: SizedBox(
          height: sWidth * 0.34,
          width: sWidth,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kWidth20,
              SizedBox(
                height: sWidth * 0.2,
                width: sWidth * 0.15,
                child: Image.asset(
                  mobileTransperantassetImage,
                ),
              ),
              kWidth20,
              SizedBox(
                width: sWidth * 0.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Iphone 13',
                            style: textHeadRegular1.copyWith(
                              color: kWhite,
                              fontSize: sWidth * 0.05,
                            ),
                          ),
                          kWidth5,
                          Text(
                            '256 GB | Black',
                            style: textHeadMedium1.copyWith(
                              color: kWhite,
                              fontSize: sWidth * 0.035,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      '₹ 18,999',
                      style: textHeadBold1.copyWith(
                        color: kWhite,
                        fontSize: sWidth * 0.06,
                      ),
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          Text(
                            'Not Satisfied With our Price ?',
                            style: textHeadBold1.copyWith(
                              color: kWhite,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigator.of(context).pushNamedAndRemoveUntil(
                              //     Routes.questions, (route) => false);
                              body[1] = const QuestionTabs();
                              bottomBarNotifier.notifyListeners();
                            },
                            child: Text(
                              'Recalculate',
                              style: textHeadBold1.copyWith(
                                color: kWhite,
                                decoration: TextDecoration.underline,
                                decorationColor: kWhite,
                                decorationThickness: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
