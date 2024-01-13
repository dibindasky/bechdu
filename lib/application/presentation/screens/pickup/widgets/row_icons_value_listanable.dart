import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

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
            ),
            circleAvatar(
              'assets/images/address_icon.png',
              PickupDetailContainers.address,
            ),
            circleAvatar(
              'assets/images/payment_icon.png',
              PickupDetailContainers.cashOrUPI,
            ),
            circleAvatar(
              'assets/images/date_icon.png',
              PickupDetailContainers.dateSelect,
            ),
          ],
        );
      },
    );
  }

  Widget circleAvatar(String image, PickupDetailContainers item) {
    bool isSelected = pickupDetailChangeNotifier.value == item;
    return GestureDetector(
      onTap: () {
        pickupDetailChangeNotifier.value = item;
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