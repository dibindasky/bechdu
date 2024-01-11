import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/widgets/cash_or_upi.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/widgets/personal_details.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/widgets/street_address.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:flutter/material.dart';

class DataValueListanableContainers extends StatelessWidget {
  const DataValueListanableContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: pickupDetailChangeNotifier,
      builder: (context, value, child) {
        if (value == PickupDetailContainers.personalDetails) {
          return const PersonalDetails();
        }
        if (value == PickupDetailContainers.address) {
          return const StreetAddress();
        }
        if (value == PickupDetailContainers.cashOrUPI) {
          return const CashOrUPI();
        }
        if (value == PickupDetailContainers.dateSelect) {
          return const SizedBox();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
