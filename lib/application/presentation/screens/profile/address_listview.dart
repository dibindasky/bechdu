import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/confirmation_daillogue/exit_app_dailogue.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressListView extends StatefulWidget {
  const AddressListView({
    super.key,
  });

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
          return const LoadingAnimation(width: 30);
        }
        if (state.hasError) {
          return const Text('Error fetch');
        } else {
          return ListView.separated(
            separatorBuilder: (context, index) {
              return kHeight20;
            },
            itemCount: state.address.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                            InkWell(
                              onTap: () {
                                showConfirmationDialog(
                                  context,
                                  heading: 'Do you want to delete this address',
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    context.read<ProfileBloc>().add(
                                        ProfileEvent.deleteAddress(
                                            index: index));
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
