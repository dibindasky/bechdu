import 'dart:developer';

import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/confirmation_daillogue/exit_app_dailogue.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/promo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/model/order_model/order_placed_request_model/user.dart';

class AddressListView extends StatefulWidget {
  const AddressListView({
    super.key,
    required this.isFromProfile,
  });

  final bool isFromProfile;

  @override
  State<AddressListView> createState() => _AddressListViewState();
}

class _AddressListViewState extends State<AddressListView> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.isLoading) {
          return LoadingAnimation(width: 30);
        }
        if (state.hasError) {
          return IconButton(
            onPressed: () {
              log('Address refresh icon');
              context
                  .read<ProfileBloc>()
                  .add(const ProfileEvent.getUserInfo(isLoad: true));
            },
            icon: const Icon(
              Icons.refresh,
            ),
          );
        } else {
          return ListView.separated(
            separatorBuilder: (context, index) {
              return kHeight20;
            },
            itemCount: state.address.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                builder: (context, placeOrderBloc) {
                  return InkWell(
                    onTap: () {
                      Promo promo = Promo(
                        code: placeOrderBloc.promoCodeResponceModel != null
                            ? context
                                .read<PlaceOrderBloc>()
                                .promocodeController
                                .text
                            : '',
                        price: placeOrderBloc.promoCodeResponceModel != null
                            ? placeOrderBloc.promoCodeResponceModel!.value
                                .toString()
                            : '',
                      );
                      // Address pick request user object creation
                      User user = User();
                      String email =
                          context.read<PlaceOrderBloc>().emailController.text;
                      String name =
                          context.read<PlaceOrderBloc>().nameController.text;
                      String addPhone = context
                          .read<PlaceOrderBloc>()
                          .additionalNumberController
                          .text;
                      user = user.copyWith(
                        address: state.address[index],
                        email: email,
                        name: name,
                        addPhone: addPhone.isEmpty ? '' : addPhone,
                      );
                      log('Picked addrs ${user.address}');
                      context.read<PlaceOrderBloc>().add(
                          PlaceOrderEvent.addressPick(
                              user: user, promo: promo));
                      setState(() {
                        isSelected = index;
                      });
                    },
                    child: Material(
                      elevation: 1,
                      child: ClipRRect(
                        borderRadius: kRadius10,
                        child: ColoredBox(
                          color: isSelected == index ? klightgrey : kWhite,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 17,
                                  child: Icon(
                                    Icons.location_pin,
                                    color: kGreenPrimary,
                                  ),
                                ),
                                kWidth10,
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state.address[index],
                                        style: textHeadMedium1,
                                        textAlign: TextAlign.start,
                                        maxLines: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                widget.isFromProfile
                                    ? InkWell(
                                        onTap: () {
                                          showConfirmationDialog(
                                            context,
                                            heading:
                                                'Do you want to delete this address',
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              context.read<ProfileBloc>().add(
                                                    ProfileEvent.deleteAddress(
                                                      index: index,
                                                    ),
                                                  );
                                            },
                                          );
                                        },
                                        child: const CircleAvatar(
                                          radius: 17,
                                          child: Icon(
                                            Icons.delete,
                                            color: kRed,
                                          ),
                                        ),
                                      )
                                    : kEmpty,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}
