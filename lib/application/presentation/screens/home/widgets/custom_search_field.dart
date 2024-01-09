import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomSearchFieldHome extends StatelessWidget {
  const CustomSearchFieldHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: sWidth * 0.10,
        child: ClipRRect(
          borderRadius: kRadius10,
          child: ColoredBox(
            color: kBluePrimary,
            child: TextField(style: textHeadRegular1.copyWith(color: kWhite),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_rounded, color: kWhite),
                suffixIcon: const Icon(Icons.filter_list, color: kWhite),
                hintText: 'Search for offers, mobiles etc.',
                hintStyle: textHeadRegular1.copyWith(color: kWhite),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

