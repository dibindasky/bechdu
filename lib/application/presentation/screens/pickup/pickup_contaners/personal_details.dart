import 'dart:ffi';

import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/order_placed_request_model.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'NAME',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          TTextFormField(
            controller: context.read<PlaceOrderBloc>().nameController,
            text: 'Jonathan',
          ),
          Text(
            'EMAIL ADDRESS',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          TTextFormField(
            controller: context.read<PlaceOrderBloc>().emailController,
            text: '@gmail.com',
          ),
          Text(
            'PHONE NUMBER',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          TTextFormField(
            controller: context.read<PlaceOrderBloc>().numberController,
            text: 'Number',
            inputType: TextInputType.number,
          ),
          Text(
            'ADDITIONAL PHONE NUMBER',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          TTextFormField(
            controller: context.read<AuthBloc>().phoneNumberController,
            inputType: TextInputType.number,
            text: 'xxxxxxxxx',
          ),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              onPressed: () {
                if (context
                        .read<PlaceOrderBloc>()
                        .emailController
                        .text
                        .isEmpty &&
                    context
                        .read<PlaceOrderBloc>()
                        .nameController
                        .text
                        .isEmpty &&
                    context
                        .read<PlaceOrderBloc>()
                        .additionalNumberController
                        .text
                        .isEmpty &&
                    context
                        .read<PlaceOrderBloc>()
                        .emailController
                        .text
                        .isEmpty) {
                  showSnack(
                      context: context, message: 'Please fill requered fields');
                }
                //User data object creation
                User user = User(
                  phone: context.read<PlaceOrderBloc>().numberController.text,
                  email: context.read<PlaceOrderBloc>().emailController.text,
                  name: context.read<PlaceOrderBloc>().nameController.text,
                  addPhone: context
                      .read<PlaceOrderBloc>()
                      .additionalNumberController
                      .text,
                );

                //User details pick event
                context
                    .read<PlaceOrderBloc>()
                    .add(PlaceOrderEvent.userDetailsPick(user: user));

                pickupDetailChangeNotifier.value =
                    PickupDetailContainers.address;
                pickupDetailChangeNotifier.notifyListeners();
                context
                    .read<LocationBloc>()
                    .add(const LocationEvent.locationPick());
              },
              text: 'Continue',
            ),
          ),
        ],
      ),
    );
  }
}
