import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchFieldHome extends StatelessWidget {
  const CustomSearchFieldHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: sWidth * 0.7,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: kBlack.withOpacity(0.5),
                    borderRadius: kRadius10,
                    border: Border.all(color: kWhite)),
                child: TextField(
                  style: textHeadRegular1.copyWith(color: kWhite),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon:
                        const Icon(Iconsax.search_normal5, color: kWhite),
                    hintText: ' Find things to do',
                    hintStyle: textHeadRegular1.copyWith(color: kWhite),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: kBlack.withOpacity(0.5),
                borderRadius: kRadius10,
                border: Border.all(color: kWhite)),
            child: IconButton(
                icon: const Icon(
                  Iconsax.location,
                  color: kWhite,
                ),
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}
