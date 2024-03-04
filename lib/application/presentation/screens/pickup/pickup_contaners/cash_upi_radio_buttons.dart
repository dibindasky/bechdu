import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CashOrUPI extends StatefulWidget {
  const CashOrUPI({
    super.key,
  });

  @override
  State<CashOrUPI> createState() => _CashOrUPIState();
}

class _CashOrUPIState extends State<CashOrUPI> {
  String selectedRadio = 'cash';
  TextEditingController upiIdController = TextEditingController();

  void handleRadioValueChanged(String? value) {
    setState(() {
      selectedRadio = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  Expanded(child: customRadioButton('Cash', 'cash')),
                  kWidth10,
                  Expanded(child: customRadioButton('UPI', 'upi')),
                ],
              ),
              if (selectedRadio == 'upi') ...[
                kHeight10,
                TTextFormField(
                  controller: context.read<PlaceOrderBloc>().upiIdController,
                  text: 'UPI Id',
                ),
              ],
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: CustomButton(
            onPressed: () {
              if (selectedRadio == 'upi') {
                if (context
                    .read<PlaceOrderBloc>()
                    .upiIdController
                    .text
                    .isNotEmpty) {
                  Payment payment = Payment(
                    type: selectedRadio,
                    id: context.read<PlaceOrderBloc>().upiIdController.text,
                  );
                  // event call for placing order
                  context
                      .read<PlaceOrderBloc>()
                      .add(PlaceOrderEvent.paymentOption(payment: payment));
                  pickupDetailChangeNotifier.value =
                      PickupDetailContainers.dateSelect;
                  pickupDetailChangeNotifier.notifyListeners();
                } else {
                  showSnack(
                      context: context, message: 'Please fill Upi Details');
                }
              }
              if (selectedRadio == 'cash') {
                Payment payment = Payment(
                  type: selectedRadio,
                  id: '',
                );
                pickupDetailChangeNotifier.value =
                    PickupDetailContainers.dateSelect;
                pickupDetailChangeNotifier.notifyListeners();

                // event call for place order
                context
                    .read<PlaceOrderBloc>()
                    .add(PlaceOrderEvent.paymentOption(payment: payment));
              }
            },
            text: 'Continue',
          ),
        ),
      ],
    );
  }

  Widget customRadioButton(String label, String value) {
    return GestureDetector(
      onTap: () {
        handleRadioValueChanged(value);
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
            selectedRadio == value
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

  @override
  void dispose() {
    upiIdController.dispose();
    super.dispose();
  }
}
