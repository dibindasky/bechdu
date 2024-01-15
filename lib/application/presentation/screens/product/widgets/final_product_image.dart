import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/product/widgets/custom_button.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class FinalProductImage extends StatelessWidget {
  const FinalProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sWidth * .54,
      decoration: BoxDecoration(
        color: kBlueLight,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            height: sWidth * .33,
            width: sWidth * .24,
            child: Image.asset(
              mobileTransperantassetImage,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Iphone 13',
                        style: textHeadBold1.copyWith(
                            color: kWhite, fontSize: sWidth * .057),
                      ),
                      kWidth5,
                      Text(
                        '256 GB | Black',
                        style: textHeadMedium1.copyWith(
                          color: kWhite,
                          fontSize: sWidth * .033,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'upto ₹ 20,000',
                    style: textHeadMedium1.copyWith(
                      color: kWhite,
                      fontSize: sWidth * .035,
                    ),
                  ),
                  Text(
                    'Note : The Price stated above depends on the condition of the product and is not final.',
                    overflow: TextOverflow.ellipsis,
                    style: textHeadMedium1.copyWith(
                      fontSize: sWidth * .035,
                      color: kWhite,
                    ),
                    maxLines: 6,
                  ),

                  kHeight20,
                  CustomButton(
                    text: 'Get Exact Value',
                    onPressed: () => Navigator.of(context)
                        .pushNamed(Routes.questions),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
