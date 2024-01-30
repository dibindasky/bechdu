import 'package:beachdu/application/presentation/screens/order/widgets/my_order_container.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/exit_app_daillogue/exit_app_dailogue.dart';
import 'package:flutter/material.dart';

class ScreenMyOrders extends StatelessWidget {
  const ScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool shouldPop = await showExitConfirmationDialog(context);
        return shouldPop;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'My Orders',
            style: textHeadBoldBig,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) => const MyOrderContainer(),
          ),
        ),
      ),
    );
  }
}
