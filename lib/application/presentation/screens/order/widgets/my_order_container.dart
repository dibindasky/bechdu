import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/presentation/screens/order/widgets/cancel_order_dailog.dart';
import 'package:beachdu/application/presentation/screens/order/widgets/row_data.dart';
import 'package:beachdu/application/presentation/screens/product_selection/widgets/custom_button.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/model/order_model/order_cancelation_request_model/order_cancelation_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class MyOrderContainer extends StatelessWidget {
  const MyOrderContainer({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
      builder: (context, state) {
        final data = state.getAllOrderResponceModel!.orders![index];
        final type = data.payment?.type!;

        return Container(
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
          child: Column(
            children: [
              kHeight10,
              Row(
                children: [
                  kWidth10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${data.productDetails!.name}',
                        style: textHeadMedium1,
                      ),
                      Text(
                        "₹ ${data.productDetails!.price}",
                        style: textHeadBold1,
                      ),
                    ],
                  ),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: kRadius5,
                    child: ColoredBox(
                      color: getStatusColor(data.status!),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Text(
                          '${data.status}',
                          style: textHeadRegular1.copyWith(
                            color: kWhite,
                            fontSize: sWidth * .03,
                          ),
                        ),
                      ),
                    ),
                  ),
                  kWidth10
                ],
              ),
              kHeight10,
              kHeight10,
              RowDatas(
                isRow: false,
                heading: 'Pickup Location',
                imageFirst: pickupLocationhand,
                lastImage: pickupLocationIcon,
                subHead: '${data.user?.address}',
                date: '${data.pickUpDetails!.date}',
              ),
              kHeight10,
              RowDatas(
                isRow: true,
                heading: 'Pickup Date',
                subHead: '${data.pickUpDetails!.time}',
                imageFirst: pickupclock,
                date: '${data.pickUpDetails!.date}',
              ),
              kHeight20,
              RowDatas(
                isRow: true,
                heading: 'Payment Method',
                subHead: type ?? '',
                imageFirst: paymentMethodIcon,
                date: data.payment?.id ?? '',
              ),
              kHeight10,
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: kRadius5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Text(
                          '  ${data.orderId}  ',
                          style: textHeadBold1.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    data.status == 'new'
                        ? Row(
                            children: [
                              CustomButton(
                                fontSize: 11,
                                height: 30,
                                width: 100,
                                text: 'Cancel Order',
                                onPressed: () {
                                  cancelOrder(
                                    context,
                                    onPressed: () {
                                      if (context
                                              .read<PlaceOrderBloc>()
                                              .cancelationReasonController
                                              .length >
                                          10) {
                                        //Order cancelation event
                                        OrderCancelationRequestModel
                                            orderCancelationRequestModel =
                                            OrderCancelationRequestModel(
                                          cancellationReason: context
                                              .read<PlaceOrderBloc>()
                                              .cancelationReasonController
                                              .text,
                                        );
                                        context.read<PlaceOrderBloc>().add(
                                              PlaceOrderEvent.orderCancel(
                                                orderCancelationRequestModel:
                                                    orderCancelationRequestModel,
                                                orderId: data.id!,
                                              ),
                                            );
                                        context
                                            .read<PlaceOrderBloc>()
                                            .cancelationReasonController
                                            .clear();
                                        Navigator.of(context).pop();
                                      } else {
                                        showSnack(
                                          context: context,
                                          message:
                                              'Cancellation reason must have atleast 10 character',
                                          color: kRed,
                                        );
                                      }
                                    },
                                  );
                                },
                              ),
                              kWidth10,
                            ],
                          )
                        : data.status == 'Completed'
                            ? Row(
                                children: [
                                  BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                                    builder: (context, state) {
                                      if (state.isLoading) {
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                      return CustomButton(
                                        fontSize: 11,
                                        height: 30,
                                        width: 130,
                                        color: kRed,
                                        text: 'Download invoice',
                                        onPressed: () {
                                          context.read<PlaceOrderBloc>().add(
                                                  PlaceOrderEvent
                                                      .invoiceDownload(
                                                isLoad: true,
                                                orderId: data.id!,
                                              ));
                                        },
                                      );
                                    },
                                  ),
                                  kWidth10,
                                ],
                              )
                            : kEmpty
                  ],
                ),
              ),
              kHeight10,
            ],
          ),
        );
      },
    );
  }
}
