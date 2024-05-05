import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/screens/profile/profile_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/model/address_model/address_creation_request_model/address_creation_request_model.dart';
import 'package:beachdu/domain/model/location/city_update_request_model/city_update_request_model.dart';
import 'package:beachdu/domain/model/location/pincode_update_request_model/pincode_update_request_model.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddresCreationFields extends StatefulWidget {
  const AddresCreationFields({super.key});

  @override
  State<AddresCreationFields> createState() => _AddresCreationFieldsState();
}

class _AddresCreationFieldsState extends State<AddresCreationFields> {
  TextEditingController locationControler = TextEditingController();
  TextEditingController pincodeControlelr = TextEditingController();
  String? selected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ADDRESS',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            TTextFormField(
              textCapitalization: TextCapitalization.words,
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
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: textFieldBorderColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      hint: Text(
                        'Location',
                        style: textHeadInter.copyWith(color: klightgrey),
                      ),
                      isExpanded: true,
                      items: context.read<LocationBloc>().locations.toSet().map(
                        (entry) {
                          return DropdownMenuItem(
                            value: entry,
                            child: Text(
                              entry,
                              style: textHeadSemiBold1.copyWith(
                                  fontSize: sWidth * 0.04),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (value) {
                        if (context.read<LocationBloc>().location != value) {
                          context.read<LocationBloc>().pincode = null;
                        }
                        context.read<LocationBloc>().location = value;

                        context
                            .read<LocationBloc>()
                            .add(LocationEvent.pinCodePick(cityName: value!));
                        //picked loaction update event
                        CityUpdateRequestModel cityUpdateRequestModel =
                            CityUpdateRequestModel(
                          city: value,
                        );
                        context.read<LocationBloc>().add(
                              LocationEvent.locationUpdate(
                                cityUpdateRequestModel: cityUpdateRequestModel,
                              ),
                            );
                        // setState(() {
                        //   selected = value!;
                        // });
                      },
                      value: context.read<LocationBloc>().location,
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: kRadius5,
                          color: kWhite,
                        ),
                        offset: const Offset(0, -5),
                        maxHeight: 250,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                      dropdownSearchData: dropdownSearchData(locationControler),
                      onMenuStateChange: (isOpen) {
                        if (!isOpen) {
                          locationControler.clear();
                        }
                      },
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
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: textFieldBorderColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: BlocBuilder<LocationBloc, LocationState>(
                    builder: (context, state) {
                      return DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          hint: Text(
                            'Pincode',
                            style: textHeadInter.copyWith(color: klightgrey),
                          ),
                          isExpanded: true,
                          items: context
                              .read<LocationBloc>()
                              .pinCodes
                              .toSet()
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
                          onChanged: (value) {
                            context.read<LocationBloc>().pincode = value;
                            PincodeUpdateRequestModel
                                pincodeUpdateRequestModel =
                                PincodeUpdateRequestModel(
                              pincode: value,
                            );
                            context.read<LocationBloc>().add(
                                  LocationEvent.pincodeUpdate(
                                    pincodeUpdateRequestModel:
                                        pincodeUpdateRequestModel,
                                  ),
                                );
                          },
                          value: context.read<LocationBloc>().pincode,
                          dropdownStyleData: DropdownStyleData(
                            decoration: BoxDecoration(
                              borderRadius: kRadius5,
                              color: kWhite,
                            ),
                            offset: const Offset(0, -5),
                            maxHeight: 250,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                          dropdownSearchData:
                              dropdownSearchData(pincodeControlelr),
                          onMenuStateChange: (isOpen) {
                            if (!isOpen) {
                              pincodeControlelr.clear();
                            }
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
        kHeight50,
        kHeight50,
        CustomButton(
          onPressed: () {
            if (context.read<ProfileBloc>().addressController.text.isNotEmpty &&
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
                      addressCreationRequestModel: addressCreationRequestModel,
                    ),
                  );

              // Clear selected fields after adding address
              context.read<ProfileBloc>().addressController.clear();
              context.read<LocationBloc>().add(const LocationEvent.clear());
              //Screen notifier changing
              // setState(() {
              //   selected = null;
              // });
              setState(() {
                context.read<ProfileBloc>().isShowAddress =
                    !context.read<ProfileBloc>().isShowAddress;
              });
              profileScreensNotifier.value = 0;
              profileScreensNotifier.notifyListeners();
            } else {
              showSnack(
                context: context,
                message: "please fill required feilds",
                color: kRed,
              );
            }
          },
          text: 'Add address',
        ),
      ],
    );
  }

  DropdownSearchData<String> dropdownSearchData(
      TextEditingController controller) {
    return DropdownSearchData(
      searchController: controller,
      searchInnerWidgetHeight: 50,
      searchInnerWidget: Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: kWhite,
        )),
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(right: 10, top: 5),
          child: TextFormField(
            style: const TextStyle(color: kBlack),
            expands: true,
            maxLines: null,
            controller: controller,
            decoration: InputDecoration(
              labelStyle: textHeadBoldBig,
              icon: const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 5),
                child: Icon(
                  Icons.search,
                  color: kBlack,
                ),
              ),
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              hintText: 'Search',
              hintStyle: textHeadMedium1.copyWith(color: kWhite),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: kBlack),
                borderRadius: kRadius10,
              ),
            ),
          ),
        ),
      ),
      searchMatchFn: (item, searchValue) {
        return item.value.toString().toLowerCase().contains(
              searchValue.toLowerCase(),
            );
      },
    );
  }
}
