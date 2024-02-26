import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchFieldHome extends StatelessWidget {
  const CustomSearchFieldHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: sWidth * 0.7,
            child: TextField(
              style: textHeadMedium1,
              decoration: InputDecoration(
                filled: true,
                fillColor: klightwhite,
                hintText: 'Search products',
                prefixIcon: const Icon(
                  Icons.search,
                  color: kBlack,
                  size: 20,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: klightwhite,
              borderRadius: kRadius10,
            ),
            child: IconButton(
              icon: const Icon(
                Iconsax.location,
                color: kBlack,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.location);
              },
            ),
          ),
        ],
      ),
    );
  }
}
