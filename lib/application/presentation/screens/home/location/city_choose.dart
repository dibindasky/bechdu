import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/model/location/city_update_request_model/city_update_request_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

class ScreenLocations extends StatelessWidget {
  const ScreenLocations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<LocationBloc>()
          .add(const LocationEvent.locationSearch(searchQuery: ''));
    });
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(locationbackgropundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: BlocBuilder<LocationBloc, LocationState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Align(
                    alignment: Alignment.center,
                    child: LoadingAnimation(width: 50),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight40,
                      Text(
                        'Select City',
                        style: textHeadBold1.copyWith(fontSize: sWidth * .04),
                      ),
                      kHeight10,
                      CupertinoTextField(
                        cursorWidth: 3,
                        cursorColor: kWhite,
                        onChanged: (value) {
                          context.read<LocationBloc>().add(
                              LocationEvent.locationSearch(searchQuery: value));
                        },
                        style: textHeadMedium1.copyWith(
                          color: kWhite,
                        ),
                        suffix: Container(
                          padding: const EdgeInsets.only(right: 13),
                          height: 20,
                          child: Image.asset(
                            'assets/images/location_list_png.png',
                          ),
                        ),
                        prefix: const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Iconsax.search_favorite,
                            color: kWhite,
                            size: 18,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: kBlueLight,
                          borderRadius: kRadius5,
                        ),
                        placeholder: 'Search...',
                        placeholderStyle: textHeadInter.copyWith(
                          color: klightwhite,
                        ),
                      ),
                      kHeight20,
                      Expanded(
                        child: BlocConsumer<LocationBloc, LocationState>(
                          listener: (context, state) {
                            if (state.cityUpdateResponceModel != null) {
                              showSnack(
                                context: context,
                                message: state.message!,
                              );
                            }
                          },
                          builder: (context, state) {
                            if (state.hasError) {
                              return const Center(
                                child: Text('Some error'),
                              );
                            } else {
                              if (state.filteredLocations == null ||
                                  state.filteredLocations!.isEmpty) {
                                return Center(
                                  child: Lottie.asset(emptyLottie),
                                );
                              } else {
                                return GridView.builder(
                                  itemCount: state.filteredLocations!.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                    childAspectRatio: 1 / .4,
                                  ),
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        //Pincode load event
                                        context.read<LocationBloc>().add(
                                              LocationEvent.pinCodePick(
                                                cityName: state
                                                    .filteredLocations![index],
                                              ),
                                            );

                                        //picked location update even
                                        CityUpdateRequestModel
                                            cityUpdateRequestModel =
                                            CityUpdateRequestModel(
                                          city: state.filteredLocations![index],
                                        );
                                        context.read<LocationBloc>().add(
                                              LocationEvent.locationUpdate(
                                                cityUpdateRequestModel:
                                                    cityUpdateRequestModel,
                                              ),
                                            );

                                        //Navigating to pincode screen
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                          Routes.pincode,
                                          arguments:
                                              state.filteredLocations![index],
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius: kRadius5,
                                        child: ColoredBox(
                                          color: kWhiteextra,
                                          child: FittedBox(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                kWidth5,
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.green[50],
                                                  radius: 7,
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.lightGreen,
                                                    radius: 3,
                                                  ),
                                                ),
                                                const SizedBox(width: 3),
                                                Text(
                                                  state.filteredLocations![
                                                      index],
                                                  style: textHeadSemiBold1,
                                                ),
                                                kWidth10,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }
                            }
                          },
                        ),
                      ),
                      kHeight10,
                      const Spacer(),
                      Center(
                        child: CustomButton(
                          onPressed: () {
                            context
                                .read<LocationBloc>()
                                .add(const LocationEvent.locationSkipEvent());
                            Navigator.of(context).pop();
                          },
                          text: 'Go back',
                        ),
                      ),
                      kHeight40,
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
