import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/final_price_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class FinalProductPriceDetaails extends StatelessWidget {
  const FinalProductPriceDetaails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 230,
                child: Text(
                  'Pickup Charges',
                  style: textHeadRegular1.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Free',
                style: textHeadMedium1.copyWith(color: kGreenPrimary),
              ),
              const Text('₹ 200'),
            ],
          ),
        ),
        kHeight10,
        TextFormField(
          decoration: InputDecoration(
            hintText: 'BCHDUFIRST',
            hintStyle: textHeadMedium1.copyWith(color: Colors.grey),
            filled: true,
            fillColor: kWhite.withOpacity(.2),
          ),
        ),
        kHeight10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Applied',
                style: textHeadMedium1.copyWith(color: kGreenPrimary),
              ),
              const Text('₹ 200'),
            ],
          ),
        ),
        kHeight10,
        const Divider(thickness: 2),
        kHeight20,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: textHeadSemiBold1.copyWith(fontSize: sWidth * .039),
              ),
              Text(
                '₹ 19,999',
                style: textHeadSemiBold1.copyWith(fontSize: sWidth * .039),
              ),
            ],
          ),
        ),
        const PrivacyPolicyCheckbox(),
      ],
    );
  }
}
