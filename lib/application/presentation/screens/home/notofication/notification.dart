import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/refresh_indicator.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/application/presentation/utils/time/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotiiFicationScreen extends StatefulWidget {
  const NotiiFicationScreen({super.key});

  @override
  State<NotiiFicationScreen> createState() => _NotiiFicationScreenState();
}

class _NotiiFicationScreenState extends State<NotiiFicationScreen> {
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        context.read<HomeBloc>().add(const HomeEvent.getNotificationsNext());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HomeBloc>().add(const HomeEvent.notification(reset: true));
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.notificationLoad) {
              return Center(
                  child: LoadingAnimation(
                width: 40,
              ));
            }
            if (state.notifications != null &&
                state.notifications!.isNotEmpty) {
              int length = state.pageLoading
                  ? state.notifications!.length + 1
                  : state.notifications!.length;
              return RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<HomeBloc>()
                      .add(const HomeEvent.notification(reset: true));
                  await Future.delayed(const Duration(seconds: 2));
                },
                child: ListView.separated(
                  controller: controller,
                  padding: const EdgeInsets.all(0),
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: length,
                  separatorBuilder: (context, index) {
                    return kEmpty;
                  },
                  itemBuilder: (context, index) {
                    if (index == state.notifications!.length) {
                      return ShimmerLoader(
                          itemCount: 1, height: 100, width: sWidth);
                    }
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
                                    formatDateTime(data.timestamp!),
                                    style: textHeadRegular1,
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
                ),
              );
            } else {
              return ErrorRefreshIndicator(
                  image: gifNoData,
                  errorMessage: 'No Notifications',
                  onRefresh: () {
                    context
                        .read<HomeBloc>()
                        .add(const HomeEvent.notification(reset: true));
                  });
            }
          },
        ),
      ),
    );
  }
}
