import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/profile/add_address/add_address.dart';
import 'package:beachdu/application/presentation/screens/profile/address_listview.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/model/address_model/address_creation_request_model/address_creation_request_model.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreetAddress extends StatelessWidget {
  const StreetAddress({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<LocationBloc>().add(const LocationEvent.locationPick());
      },
    );
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AddressListView(),
          kHeight20,
          const AddresCreationFields(),
          Align(
            alignment: Alignment.center,
            child: BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, profileBloc) {
                return CustomButton(
                  onPressed: () {
                    if (profileBloc.address.isEmpty) {
                      showSnack(
                        context: context,
                        message: 'Please create atleast one address',
                      );
                    } else {
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
                        //Object creation
                        AddressCreationRequestModel
                            addressCreationRequestModel =
                            AddressCreationRequestModel(
                          address: address,
                        );
                        //Add addrerss event
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

                        //Order placing request user object creation
                        User user = User(address: address);
                        //Order placing address pick event
                        context
                            .read<PlaceOrderBloc>()
                            .add(PlaceOrderEvent.addressPick(user: user));
                      } else {
                        showSnack(
                          context: context,
                          message: "please fill requuired feilds",
                        );
                      }
                    }
                  },
                  text: 'Continue',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
