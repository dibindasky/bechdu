import 'dart:developer';

import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/refresh_indicator.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/application/presentation/utils/time/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                        itemCount: 1,
                        height: 100,
                        width: sWidth,
                      );
                    }
                    final data = state.notifications![index];
                    final color = getStatusColorNotification(data.type ?? "");
                    return InkWell(
                      onTap: () {
                        context.read<HomeBloc>().add(
                            HomeEvent.changeNotificationStatus(
                                notiId: data.id.toString()));
                        context.read<NavbarCubit>().changeNavigationIndex(2);
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: data.status == false
                              ? kBluelight.withOpacity(0.5)
                              : kWhite,
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
                        margin: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        width: double.infinity,
                        height: 110,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  data.status == false
                                      ? const CircleAvatar(
                                          radius: 4,
                                          backgroundColor: kGreenPrimary,
                                        )
                                      : kEmpty,
                                  kWidth10,
                                  Text(
                                    data.title!,
                                    style: textHeadBoldBig,
                                  ),
                                  const Spacer(),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    data.type!,
                                    style:
                                        textHeadBoldBig.copyWith(color: color),
                                  ),
                                ],
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
                },
              );
            }
          },
        ),
      ),
    );
  }
}
