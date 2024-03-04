import 'dart:developer';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/screens/profile/profile_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:beachdu/domain/model/address_model/address_creation_request_model/address_creation_request_model.dart';
import 'package:beachdu/domain/model/location/city_update_request_model/city_update_request_model.dart';
import 'package:beachdu/domain/model/location/pincode_update_request_model/pincode_update_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<LocationBloc>().add(const LocationEvent.locationPick());
      },
    );
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          profileScreensNotifier.value = 0;
          profileScreensNotifier.notifyListeners();
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 120,
            leading: IconButton(
              onPressed: () {
                profileScreensNotifier.value = 0;
                profileScreensNotifier.notifyListeners();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
            ),
            title: Text(
              'Create address',
              style: textHeadSemiBold1,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
                child: BlocListener<ProfileBloc, ProfileState>(
              listener: (context, state) {
                if (state.addressCreationResponceModel!.message != null) {
                  showSnack(
                    context: context,
                    message: state.addressCreationResponceModel!.message!,
                  );
                }
              },
              child: Column(
                children: [
                  const AddresCreationFields(),
                  ElevatedButtonLong(
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
                        AddressCreationRequestModel
                            addressCreationRequestModel =
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

                        // Clear selected fields after adding address
                        context.read<ProfileBloc>().addressController.clear();
                        context
                            .read<LocationBloc>()
                            .add(const LocationEvent.clear());

                        //Screen notifier changing
                        profileScreensNotifier.value = 0;
                        profileScreensNotifier.notifyListeners();
                      } else {
                        showSnack(
                            context: context, message: "please fill feilds");
                      }
                    },
                    text: 'Add address',
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}

class AddresCreationFields extends StatelessWidget {
  const AddresCreationFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: context.read<ProfileBloc>().formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ADDRESS',
                style: textHeadMedium1.copyWith(
                  fontSize: sWidth * .033,
                ),
              ),
              TTextFormField(
                controller: context.read<ProfileBloc>().addressController,
                text: 'Address',
              ),
              Text(
                'LOCATION',
                style: textHeadMedium1.copyWith(
                  fontSize: sWidth * .033,
                ),
              ),
              kHeight10,
              BlocBuilder<LocationBloc, LocationState>(
                builder: (context, state) {
                  return Container(
                    padding: const EdgeInsets.only(left: 10, right: 12),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: textFieldBorderColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text(context.read<LocationBloc>().location ??
                            'Location'),
                        value: context.read<LocationBloc>().location,
                        onChanged: (String? newValue) {
                          if (context.read<LocationBloc>().location !=
                              newValue) {
                            context.read<LocationBloc>().pincode = null;
                          }
                          context.read<LocationBloc>().location = newValue;
                          log('location selection selectd loc UI  ${context.read<LocationBloc>().location ?? ''}');
                          context.read<LocationBloc>().add(
                              LocationEvent.pinCodePick(
                                  cityName: newValue ?? ''));
                          //picked loaction update event
                          CityUpdateRequestModel cityUpdateRequestModel =
                              CityUpdateRequestModel(
                            city: newValue,
                          );
                          context.read<LocationBloc>().add(
                                LocationEvent.locationUpdate(
                                    cityUpdateRequestModel:
                                        cityUpdateRequestModel),
                              );
                        },
                        items: context
                            .read<LocationBloc>()
                            .locations
                            .map<DropdownMenuItem<String>>(
                          (location) {
                            return DropdownMenuItem<String>(
                              value: location,
                              child: Text(
                                location,
                                style: textHeadSemiBold1.copyWith(
                                    fontSize: sWidth * 0.04),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  );
                },
              ),
              kHeight10,
              Text(
                'PINCODE',
                style: textHeadMedium1.copyWith(
                  fontSize: sWidth * .033,
                ),
              ),
              kHeight10,
              BlocBuilder<LocationBloc, LocationState>(
                builder: (context, state) {
                  return Container(
                    padding: const EdgeInsets.only(left: 10, right: 12),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: textFieldBorderColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text(
                            context.read<LocationBloc>().pincode ?? 'Pincode'),
                        value: context.read<LocationBloc>().pincode,
                        onChanged: (String? newValue) {
                          context.read<LocationBloc>().pincode = newValue;
                          PincodeUpdateRequestModel pincodeUpdateRequestModel =
                              PincodeUpdateRequestModel(
                            pincode: newValue,
                          );
                          context.read<LocationBloc>().add(
                                LocationEvent.pincodeUpdate(
                                  pincodeUpdateRequestModel:
                                      pincodeUpdateRequestModel,
                                ),
                              );
                        },
                        items: context
                            .read<LocationBloc>()
                            .pinCodes
                            .map<DropdownMenuItem<String>>(
                          (pincode) {
                            return DropdownMenuItem<String>(
                              value: pincode,
                              child: Text(
                                pincode,
                                style: textHeadSemiBold1.copyWith(
                                    fontSize: sWidth * 0.04),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        kHeight50,
      ],
    );
  }
}
