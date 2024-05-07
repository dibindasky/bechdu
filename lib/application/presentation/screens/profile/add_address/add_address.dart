import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/presentation/screens/profile/add_address/adress_feilds.dart';
import 'package:beachdu/application/presentation/screens/profile/profile_screen.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context
            .read<LocationBloc>()
            .add(const LocationEvent.locationPick(isLoad: false));
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
          body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: AddresCreationFields(),
          ),
        ),
      ),
    );
  }
}
