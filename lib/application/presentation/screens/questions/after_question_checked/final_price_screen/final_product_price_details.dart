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
        kHeight30,
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
              Text(
                '₹ 200',
                style: textHeadMedium1.copyWith(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: kBlack,
                  decorationThickness: 2.0,
                ),
              ),
            ],
          ),
        ),
        kHeight10,
        TextFormField(
          style: textHeadMedium1.copyWith(
            color: kBlack,
            fontSize: sWidth * 0.033,
          ),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            suffixText: 'Apply',
            fillColor: kWhiteextra,
            filled: true,
            hintText: 'BCHDUFIRST',
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
        kHeight20,
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
        kHeight20,
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
      ],
    );
  }
}
