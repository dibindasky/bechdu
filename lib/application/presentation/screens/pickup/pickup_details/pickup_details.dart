import 'package:flutter/material.dart';

enum PickupDetailContainers {
  personalDetails,
  address,
  cashOrUPI,
  dateSelect,
}

ValueNotifier<PickupDetailContainers> pickupDetailChangeNotifier =
    ValueNotifier(PickupDetailContainers.personalDetails);

class PickupDetails extends StatelessWidget {
  const PickupDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: pickupDetailChangeNotifier,
        builder: (context, value, child) {
          if (pickupDetailChangeNotifier.value.index == 0) {
            return const SizedBox();
          }
          if (pickupDetailChangeNotifier.value.index == 1) {
            return const SizedBox();
          }
          if (pickupDetailChangeNotifier.value.index == 2) {
            return const SizedBox();
          }
          if (pickupDetailChangeNotifier.value.index == 3) {
            return const SizedBox();
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
