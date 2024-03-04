import 'dart:developer';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ScreenPinCodes extends StatelessWidget {
  const ScreenPinCodes({super.key, required this.cityName});
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(locationbackgropundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kHeight40,
                    Text(
                      cityName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    CupertinoTextField(
                      onChanged: (value) {
                        context
                            .read<LocationBloc>()
                            .add(PincodeSearch(searchQuery: value));
                      },
                      style: textHeadMedium1.copyWith(
                        color: kBlack,
                      ),
                      decoration: BoxDecoration(
                        color: kWhiteextra,
                        borderRadius: kRadius5,
                      ),
                      placeholder: 'Enter pincode to continue',
                      placeholderStyle: textHeadInter.copyWith(
                        color: klightgrey,
                      ),
                    ),
                    kHeight20,
                    BlocConsumer<LocationBloc, LocationState>(
                      listener: (context, state) {
                        if (state.pincodeResponceModel != null) {
                          showSnack(
                            context: context,
                            message: state.message!,
                          );
                        }
                      },
                      builder: (context, state) {
                        if (state.isLoading) {
                          return const Center(
                            child: LoadingAnimation(width: 50),
                          );
                        }
                        if (state.hasError) {
                          return const Center(
                            child: Icon(Icons.refresh_outlined),
                          );
                        } else {
                          if (state.filteredPincodes == null ||
                              state.filteredPincodes!.isEmpty) {
                            return Center(
                              child: Lottie.asset(emptyLottie),
                            );
                          }
                        }
                        return ListView.builder(
                          itemCount: state.filteredPincodes!.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () async {
                                // Pincode selection event
                                final selectedPincode =
                                    state.filteredPincodes![index];
                                context
                                    .read<LocationBloc>()
                                    .add(LocationEvent.setPicondeSecure(
                                      pincode: selectedPincode,
                                    ));
                                Navigator.of(context).pop();
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                child: SizedBox(
                                  height: 60,
                                  child: ClipRRect(
                                    borderRadius: kRadius5,
                                    child: ColoredBox(
                                      color: kWhiteextra,
                                      child: Row(
                                        children: [
                                          kWidth20,
                                          Text(
                                            state.filteredPincodes![index],
                                            style: textHeadBold1,
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
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
