import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotiiFicationScreen extends StatelessWidget {
  const NotiiFicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HomeBloc>().add(const HomeEvent.notification());
    });
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 17,
            )),
        title: const Text('Notifications'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          child: Column(
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state.notificationLoad) {
                    return ShimmerLoader(
                      itemCount: 10,
                      height: 60,
                      width: sWidth * 0.9,
                      seprator: const SizedBox(height: 10),
                    );
                  }
                  if (state.notifications == null) {
                    return SizedBox(
                      height: sHeight * .55,
                      child: const Center(
                        child: Text('No Notifications'),
                      ),
                    );
                  }
                  if (state.notifications!.isEmpty) {
                    return SizedBox(
                      height: sHeight * .55,
                      child: const Center(
                        child: Text('No Notifications'),
                      ),
                    );
                  }
                  return ListView.separated(
                    padding: const EdgeInsets.all(0),
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.notifications!.length,
                    separatorBuilder: (context, index) {
                      return kEmpty;
                    },
                    itemBuilder: (context, index) {
                      final data = state.notifications![index];
                      String dateTimeString = '2024-05-03 15:32:39.670Z';
                      // Parse the string into a DateTime object
                      DateTime dateTime = DateTime.parse(dateTimeString);
                      // Extract hour and minute separately
                      int year = dateTime.year;
                      int hour = dateTime.hour;
                      int minute = dateTime.minute;
                      // Convert hour to 12-hour format
                      String period = hour < 12 ? 'AM' : 'PM';
                      hour = hour % 12;
                      if (hour == 0) {
                        hour = 12;
                      }
                      return InkWell(
                        onTap: () {
                          context.read<NavbarCubit>().changeNavigationIndex(2);
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: kRadius10,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.all(10),
                          width: double.infinity,
                          height: 110,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      data.title!,
                                      style: textHeadBoldBig,
                                    ),
                                    Text(
                                      '$hour $minute $period $year',
                                      style: textHeadBold1,
                                    ),
                                  ],
                                ),
                                Text(
                                  data.body!,
                                  style: textHeadMedium1,
                                ),
                                Text(
                                  data.type!,
                                  style: textHeadBoldBig,
                                ),
                              ],
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
    );
  }
}
