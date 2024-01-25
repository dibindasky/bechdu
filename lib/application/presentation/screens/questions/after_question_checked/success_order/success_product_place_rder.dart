import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/navbar/bottombar.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SuuccessOrderPlaced extends StatelessWidget {
  const SuuccessOrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(orderSuccessNetwrokImage),
            Text(
              'Thankyou for placing the order. Our pickup partner will reach out to you at given time.',
              style: textHeadSemiBold1,
            ),
            Text(
              'check your order status at my orders page.',
              style: textHeadRegular1,
            ),
            kHeight30,
            ElevatedButtonLong(
              wdth: 270,
              onPressed: () {
                // Navigator.of(context)
                //     .pushNamedAndRemoveUntil(Routes.myOrders, (route) => false);
                bottomBarNotifier.value = 2;
                bottomBarNotifier.notifyListeners();
              },
              text: 'My Orders',
            ),
          ],
        ),
      ),
    );
  }
}
