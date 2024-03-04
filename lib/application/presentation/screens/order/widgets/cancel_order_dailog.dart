import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

cancelOrder(
  BuildContext context, {
  bool noButton = false,
  String? heading,
  void Function()? onPressed,
  String? operationButtonName,
}) async {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Cancel Order',
          style: textHeadBoldBig,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please provide a reason for cancellation:',
              style: textHeadMedium1,
            ),
            TextField(
              controller:
                  context.read<PlaceOrderBloc>().cancelationReasonController,
              decoration: InputDecoration(
                hintText: 'Reason',
                hintStyle: textHeadInter,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              context
                  .read<PlaceOrderBloc>()
                  .cancelationReasonController
                  .clear();
              Navigator.of(context).pop();
            },
            child: Text(
              'Cancel',
              style: textHeadMedium1,
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              'Confirm',
              style: textHeadMedium1,
            ),
          ),
        ],
      );
    },
  );
}
