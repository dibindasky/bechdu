import 'dart:developer';

import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/utils/validators.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/payment.dart';

class CashOrUPI extends StatelessWidget {
  const CashOrUPI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: sHeight * .4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CASH / UPI',
                    style: textHeadMedium1.copyWith(
                      fontSize: sWidth * .033,
                    ),
                  ),
                  kHeight10,
                  Row(
                    children: [
                      Expanded(
                        child: customRadioButton(
                          'Cash',
                          'cash',
                          context,
                          state.selectedRadio,
                          (value) => context.read<PlaceOrderBloc>().add(
                              SelectedRadio(selectedRadio: value ?? 'cash')),
                        ),
                      ),
                      kWidth10,
                      Expanded(
                        child: customRadioButton(
                          'UPI',
                          'upi',
                          context,
                          state.selectedRadio,
                          (value) => context.read<PlaceOrderBloc>().add(
                              SelectedRadio(selectedRadio: value ?? 'upi')),
                        ),
                      ),
                    ],
                  ),
                  if (state.selectedRadio == 'upi') ...[
                    kHeight10,
                    TTextFormField(
                      controller:
                          context.read<PlaceOrderBloc>().upiIdController,
                      text: 'Enter UPI ID',
                    ),
                  ],
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onPressed: () {
                  if (state.selectedRadio == 'upi') {
                    final upiId =
                        context.read<PlaceOrderBloc>().upiIdController.text;
                    if (upiId.isNotEmpty && isValidUPI(upiId)) {
                      final payment = Payment(
                        type: 'upi',
                        id: upiId,
                      );
                      context
                          .read<PlaceOrderBloc>()
                          .add(PlaceOrderEvent.paymentOption(payment: payment));
                      pickupDetailChangeNotifier.value =
                          PickupDetailContainers.dateSelect;
                      pickupDetailChangeNotifier.notifyListeners();
                    } else {
                      showSnack(
                        context: context,
                        message: 'UPI ID is not valid',
                        color: kRed,
                      );
                    }
                  } else if (state.selectedRadio == 'cash') {
                    final payment = Payment(
                      type: 'cash',
                      id: '',
                    );
                    context
                        .read<PlaceOrderBloc>()
                        .add(PlaceOrderEvent.paymentOption(payment: payment));
                    pickupDetailChangeNotifier.value =
                        PickupDetailContainers.dateSelect;
                    pickupDetailChangeNotifier.notifyListeners();
                  }
                },
                text: 'Continue',
              ),
            ),
          ],
        );
      },
    );
  }

  Widget customRadioButton(
    String label,
    String value,
    BuildContext context,
    String? selectedRadio,
    Function(String?) onChanged,
  ) {
    return GestureDetector(
      onTap: () {
        if (value == 'cash') {
          context.read<PlaceOrderBloc>().upiIdController.clear();
        }
        onChanged(value);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: textFieldBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Text(
              label,
              style: textHeadSemiBold1.copyWith(fontSize: sWidth * .034),
            ),
            const Spacer(),
            selectedRadio == value ||
                    (selectedRadio != 'cash' && selectedRadio != 'upi')
                ? const CircleAvatar(
                    backgroundColor: kRadioButtnOuter,
                    radius: 10,
                    child: CircleAvatar(
                      backgroundColor: kGreenPrimary,
                      radius: 6,
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
