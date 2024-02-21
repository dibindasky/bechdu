import 'package:beachdu/application/presentation/screens/order/widgets/my_order_container.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/confirmation_daillogue/exit_app_dailogue.dart';
import 'package:flutter/material.dart';

class ScreenMyOrders extends StatelessWidget {
  const ScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool shouldPop = await showConfirmationDialog(context);
        return shouldPop;
      },
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: knill,
          automaticallyImplyLeading: false,
          title: Text(
            'My Orders',
            style: textHeadBoldBig,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => const MyOrderContainer(),
          ),
        ),
      ),
    );
  }
}
