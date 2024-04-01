import 'dart:developer';

import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RowIconsValueListanable extends StatelessWidget {
  const RowIconsValueListanable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: pickupDetailChangeNotifier,
      builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            circleAvatar(
              'assets/images/person_icon.png',
              PickupDetailContainers.personalDetails,
              context,
            ),
            circleAvatar(
              'assets/images/address_icon.png',
              PickupDetailContainers.address,
              context,
            ),
            circleAvatar(
              'assets/images/payment_icon.png',
              PickupDetailContainers.cashOrUPI,
              context,
            ),
            circleAvatar(
              'assets/images/date_icon.png',
              PickupDetailContainers.dateSelect,
              context,
            ),
          ],
        );
      },
    );
  }

  Widget circleAvatar(
    String image,
    PickupDetailContainers item,
    BuildContext context,
  ) {
    bool isSelected = pickupDetailChangeNotifier.value == item;
    return GestureDetector(
      onTap: () {
        if (item == PickupDetailContainers.address) {
          context
              .read<LocationBloc>()
              .add(const LocationEvent.locationPick(isLoad: true));
        }
        pickupDetailChangeNotifier.value = item;

        //  if (item == PickupDetailContainers.personalDetails) {
        //   if (validatePersonalDetails(context)) {
        //     context
        //         .read<LocationBloc>()
        //         .add(const LocationEvent.locationPick(isLoad: true));
        //   }
        // } else if (item == PickupDetailContainers.address) {
        //   // ... (validate and handle address screen)
        // } else if (item == PickupDetailContainers.cashOrUPI) {
        //   // ... (validate and handle cash/UPI screen)
        // } else if (item == PickupDetailContainers.dateSelect) {
        //   // ... (validate and handle date selection screen)
        // } else {
        //   pickupDetailChangeNotifier.value = item;
        //}
      },
      child: CircleAvatar(
        backgroundColor: isSelected ? kGreenPrimary : kBlueLight,
        child: CircleAvatar(
          radius: 12,
          backgroundColor: isSelected ? kGreenPrimary : kBlueLight,
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}
