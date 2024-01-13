import 'package:beachdu/application/presentation/screens/order/widgets/expansion_tile_order.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenMyOrders extends StatelessWidget {
  const ScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'My Orders',
          style: textHeadBoldBig,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => const MyOrderExpansionTile(),
        ),
      ),
    );
  }
}
