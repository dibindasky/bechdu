import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/cash_upi_radio_buttons.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/date_selection/date_and_time.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/personal_details.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/street_address.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:flutter/material.dart';

class DataValueListanableContainers extends StatelessWidget {
  const DataValueListanableContainers({super.key});

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
          return const DateOrTime();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
