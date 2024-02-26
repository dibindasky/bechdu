import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/profile/add_address/add_address.dart';
import 'package:beachdu/application/presentation/screens/profile/address_listview.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/model/address_model/address_creation_request_model/address_creation_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreetAddress extends StatelessWidget {
  const StreetAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AddressListView(),
          kHeight20,
          const AddresCreationFields(),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              onPressed: () {
                if (context
                        .read<ProfileBloc>()
                        .addressController
                        .text
                        .isNotEmpty &&
                    context.read<LocationBloc>().pincode != null &&
                    context.read<LocationBloc>().location != null &&
                    context.read<LocationBloc>().pincode!.isNotEmpty &&
                    context.read<LocationBloc>().location!.isNotEmpty) {
                  //Entered data concatination
                  final address =
                      '${context.read<ProfileBloc>().addressController.text.trim()} ${context.read<LocationBloc>().location} ${context.read<LocationBloc>().pincode}';
                  //Oblect creation
                  AddressCreationRequestModel addressCreationRequestModel =
                      AddressCreationRequestModel(
                    address: address,
                  );
                  //Bloc event call
                  context.read<ProfileBloc>().add(
                        ProfileEvent.addAddress(
                          addressCreationRequestModel:
                              addressCreationRequestModel,
                        ),
                      );
                  //Change notifier to next builder
                  pickupDetailChangeNotifier.value =
                      PickupDetailContainers.cashOrUPI;
                  pickupDetailChangeNotifier.notifyListeners();
                  // Clear selected fields after adding address
                  context.read<ProfileBloc>().addressController.clear();
                  context.read<LocationBloc>().add(const LocationEvent.clear());
                } else {
                  showSnack(context: context, message: "please fill feilds");
                }
              },
              text: 'Continue',
            ),
          ),
        ],
      ),
    );
  }
}
