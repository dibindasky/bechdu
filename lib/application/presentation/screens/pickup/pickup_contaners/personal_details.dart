import 'dart:ffi';

import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
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
            'FIRST NAME',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          const TTextFormField(
            text: 'Jonathan',
          ),
          Text(
            'EMAIL ADDRESS',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          const TTextFormField(
            text: '@gmail.com',
          ),
          Text(
            'PHONE NUMBER',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          const TTextFormField(
            text: 'xxxxxxxxx',
            inputType: TextInputType.number,
          ),
          Text(
            'ADDITIONAL PHONE NUMBER',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          const TTextFormField(
            inputType: TextInputType.number,
            text: 'xxxxxxxxx',
          ),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              onPressed: () {
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
