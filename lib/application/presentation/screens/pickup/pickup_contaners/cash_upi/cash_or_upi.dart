import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/cash_upi/cash_upi_radio_buttons.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class CashOrUPI extends StatelessWidget {
  const CashOrUPI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CASH / UPI',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            kHeight20,
            const MyRadioButtons(),
          ],
        ),
      ),
    );
  }
}
