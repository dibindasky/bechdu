import 'dart:developer';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/utils/validators.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/payment.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RowIconsValueListanable extends StatelessWidget {
  const RowIconsValueListanable({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: pickupDetailChangeNotifier,
      builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            circleAvatar(
              'assets/images/person_icon.png',
              PickupDetailContainers.personalDetails,
              context,
            ),
            circleAvatar(
              'assets/images/address creation icon.png',
              PickupDetailContainers.address,
              context,
            ),
            circleAvatar(
              'assets/images/payment_icon.png',
              PickupDetailContainers.cashOrUPI,
              context,
            ),
            circleAvatar(
              'assets/images/date_icon.png',
              PickupDetailContainers.dateSelect,
              context,
            ),
          ],
        );
      },
    );
  }

  Widget circleAvatar(
    String image,
    PickupDetailContainers item,
    BuildContext context,
  ) {
    bool isSelected = pickupDetailChangeNotifier.value == item;
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profile) {
        return BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                if (item == PickupDetailContainers.address &&
                    pickupDetailChangeNotifier.value ==
                        PickupDetailContainers.personalDetails) {
                  if (context
                      .read<PlaceOrderBloc>()
                      .formKey
                      .currentState!
                      .validate()) {
                    pickupDetailChangeNotifier.value =
                        PickupDetailContainers.address;
                    pickupDetailChangeNotifier.notifyListeners();
                  } else {
                    showSnack(
                      context: context,
                      message: 'Plaase add personal details',
                      color: kRed,
                    );
                  }
                } else if (item == PickupDetailContainers.cashOrUPI &&
                    pickupDetailChangeNotifier.value ==
                        PickupDetailContainers.address) {
                  if (profile.address.isEmpty) {
                    showSnack(
                      context: context,
                      message: 'Please add atleast one Address here',
                      color: kRed,
                    );
                  } else {
                    if (profile.selectedAddressIndex == -1) {
                      showSnack(
                        context: context,
                        message: 'Please select one  address',
                        color: kRed,
                      );
                    } else {
                      String email =
                          context.read<PlaceOrderBloc>().emailController.text;
                      String name =
                          context.read<PlaceOrderBloc>().nameController.text;
                      String addPhone = context
                          .read<PlaceOrderBloc>()
                          .additionalNumberController
                          .text;
                      User user = User(
                        address: profile.address[profile.selectedAddressIndex],
                        email: email,
                        name: name,
                        addPhone: addPhone.isEmpty ? '' : addPhone,
                      );
                      log('address ${user.toJson()}');
                      log('Picked addrs ${user.address}');
                      context
                          .read<PlaceOrderBloc>()
                          .add(PlaceOrderEvent.addressPick(user: user));
                      pickupDetailChangeNotifier.value =
                          PickupDetailContainers.cashOrUPI;
                      pickupDetailChangeNotifier.notifyListeners();
                    }
                  }
                } else if (item == PickupDetailContainers.dateSelect &&
                    pickupDetailChangeNotifier.value ==
                        PickupDetailContainers.cashOrUPI) {
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
                  } else {
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
                } else if ((item == PickupDetailContainers.cashOrUPI ||
                        item == PickupDetailContainers.dateSelect) &&
                    (pickupDetailChangeNotifier.value ==
                            PickupDetailContainers.personalDetails ||
                        pickupDetailChangeNotifier.value ==
                            PickupDetailContainers.address)) {
                  return;
                } else if (item != PickupDetailContainers.dateSelect) {
                  pickupDetailChangeNotifier.value = item;
                }
              },
              child: CircleAvatar(
                backgroundColor: isSelected ? kGreenPrimary : kBlueLight,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: isSelected ? kGreenPrimary : kBlueLight,
                  backgroundImage: AssetImage(image),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
