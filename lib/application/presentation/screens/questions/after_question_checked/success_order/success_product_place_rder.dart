import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocBuilder<NavbarCubit, NavbarState>(
              builder: (context, state) {
                return ElevatedButtonLong(
                  wdth: 270,
                  onPressed: () {
                    context.read<NavbarCubit>().changeNavigationIndex(2);
                    secondtabScreensNotifier.value = 0;
                    secondtabScreensNotifier.notifyListeners();
                  },
                  text: 'My Orders',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
