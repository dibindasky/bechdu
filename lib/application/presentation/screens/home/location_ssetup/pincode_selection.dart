import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenPinCodes extends StatelessWidget {
  const ScreenPinCodes({super.key, required this.cityName});
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(locationbackgropundImage),
                    fit: BoxFit.cover,
                  ),
                ),
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
                    BlocBuilder<LocationBloc, LocationState>(
                      builder: (context, state) {
                        return GridView.builder(
                          itemCount: state.filteredPincodes!.length,
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
                              onTap: () {},
                              child: ClipRRect(
                                borderRadius: kRadius15,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.green[50],
                                      radius: 7,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.lightGreen,
                                        radius: 3,
                                      ),
                                    ),
                                    kWidth10,
                                    Text(state.filteredPincodes![index]),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                )
                // }
                //},
                // ),
                ),
          ),
        ),
      ),
    );
  }
}
// if (state.isLoading) {
//                     return const Center(
//                       child: LoadingAnimation(width: 50),
//                     );
//                   } else if (state.hasError) {
//                     return Center(
//                       child: Text(state.message ?? 'Error'),
//                     );
//                   }
