import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/presentation/screens/profile/add_address/add_address.dart';
import 'package:beachdu/application/presentation/screens/profile/address_listview.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreetAddress extends StatefulWidget {
  StreetAddress({super.key});

  @override
  State<StreetAddress> createState() => _StreetAddressState();
}

class _StreetAddressState extends State<StreetAddress> {
  bool showAddressFields = false;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Address',
                style: textHeadRegular1,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showAddressFields = !showAddressFields;
                  });
                },
                child: const CircleAvatar(
                  backgroundColor: kBlack,
                  radius: 12,
                  child: Icon(
                    Icons.add,
                    color: kWhite,
                  ),
                ),
              ),
            ],
          ),
          if (showAddressFields) const AddresCreationFields(),
        ],
      ),
    );
  }
}
