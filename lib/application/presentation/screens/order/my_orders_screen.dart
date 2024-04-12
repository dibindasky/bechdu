import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/presentation/screens/order/widgets/my_order_container.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ScreenMyOrders extends StatelessWidget {
  const ScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      context
          .read<PlaceOrderBloc>()
          .add(const PlaceOrderEvent.getOrders(isLoad: false));
    });
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
            child: BlocBuilder<AuthBloc, AuthState>(
              // buildWhen: (previous, current) =>
              //     previous.logOrNot != current.logOrNot,
              builder: (context, authBloc) {
                if (!authBloc.logOrNot) {
                  return Center(
                    child: Text(
                      'You are not logged in',
                      style: textHeadMedium1,
                    ),
                  );
                }
                return BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Skeleton(
                        crossAxisCount: 1,
                        itemCount: 5,
                        height: 2,
                      );
                    }
                    if (state.getAllOrderResponceModel != null &&
                        state.getAllOrderResponceModel!.orders != null) {
                      return ListView.builder(
                        itemCount:
                            state.getAllOrderResponceModel?.orders?.length,
                        itemBuilder: (context, index) =>
                            MyOrderContainer(index: index),
                      );
                    }
                    return Center(child: Lottie.asset(emptyLottie));
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
