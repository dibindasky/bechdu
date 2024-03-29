import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/presentation/screens/order/widgets/my_order_container.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ScreenMyOrders extends StatelessWidget {
  const ScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        context
            .read<PlaceOrderBloc>()
            .add(const PlaceOrderEvent.getOrders(isLoad: false));
      },
    );
    return WillPopScope(
      onWillPop: () async {
        context.read<NavbarCubit>().changeNavigationIndex(0);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'My Orders',
            style: textHeadBoldBig,
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            context
                .read<PlaceOrderBloc>()
                .add(const PlaceOrderEvent.getOrders(isLoad: true));
            await Future.delayed(const Duration(seconds: 1));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.hasError) {
                  showSnack(context: context, message: errorMessage);
                }
              },
              builder: (context, state) {
                if (!state.logOrNot) {
                  return Lottie.asset(emptyLottie);
                }
                return BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Skeleton(
                        crossAxisCount: 1,
                        itemCount: 5,
                        height: 50,
                      );
                    } else {
                      if (state.getAllOrderResponceModel == null) {
                        return Lottie.asset(emptyLottie);
                      } else {
                        return ListView.builder(
                          itemCount:
                              state.getAllOrderResponceModel!.orders!.length,
                          itemBuilder: (context, index) =>
                              MyOrderContainer(index: index),
                        );
                      }
                    }
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
