import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/profile/add_address/adress_feilds.dart';
import 'package:beachdu/application/presentation/screens/profile/address_listview.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreetAddress extends StatefulWidget {
  const StreetAddress({super.key});

  @override
  State<StreetAddress> createState() => _StreetAddressState();
}

class _StreetAddressState extends State<StreetAddress> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context
            .read<LocationBloc>()
            .add(const LocationEvent.locationPick(isLoad: false));
      },
    );
    return SizedBox(
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AddressListView(isFromProfile: false),
              kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Address', style: textHeadRegular1),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        context.read<ProfileBloc>().isShowAddress =
                            !context.read<ProfileBloc>().isShowAddress;
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
              state.address.isEmpty &&
                      context.read<ProfileBloc>().isShowAddress == false
                  ? SizedBox(height: sHeight * .4)
                  : state.address.length < 2 &&
                          context.read<ProfileBloc>().isShowAddress == false
                      ? SizedBox(height: sHeight * .25)
                      : kHeight30,
              if (context.read<ProfileBloc>().isShowAddress)
                const AddresCreationFields(),
              if (!context.read<ProfileBloc>().isShowAddress)
                CustomButton(
                  onPressed: () {
                    state.address.isEmpty
                        ? showSnack(
                            context: context,
                            message: 'Please create atleast one address',
                            color: kRed,
                          )
                        : pickupDetailChangeNotifier.value =
                            PickupDetailContainers.cashOrUPI;
                    pickupDetailChangeNotifier.notifyListeners();
                  },
                  text: 'Continue',
                )
            ],
          );
        },
      ),
    );
  }
}
