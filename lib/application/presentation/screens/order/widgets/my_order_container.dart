import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/presentation/screens/order/widgets/cancel_order_dailog.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  data.status == 'new'
                      ? Row(
                          children: [
                            ClipRRect(
                              borderRadius: kRadius5,
                              child: ColoredBox(
                                color: kRedLight.withOpacity(0.2),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  child: Text(
                                    '${data.status}',
                                    style: textHeadRegular1.copyWith(
                                      color: kRedLight.withOpacity(0.9),
                                      fontSize: sWidth * .03,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            kWidth10,
                            IconButton(
                              onPressed: () => cancelOrder(
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
                                            orderId: data.orderId!,
                                          ),
                                        );
                                    Navigator.of(context).pop();
                                  } else {
                                    showSnack(
                                      context: context,
                                      message:
                                          'Cancellation reason must have atleast 10 charectors',
                                    );
                                  }
                                },
                              ),
                              icon: const Icon(
                                Icons.cancel,
                                color: kRed,
                              ),
                            )
                          ],
                        )
                      : ClipRRect(
                          borderRadius: kRadius5,
                          child: ColoredBox(
                            color: kRedLight.withOpacity(0.2),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              child: Text(
                                '${data.status}',
                                style: textHeadRegular1.copyWith(
                                  color: kRedLight.withOpacity(0.9),
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
              RowDatas(
                isRow: false,
                lastImage: '',
                heading: 'Pickup Partner',
                imageFirst: 'assets/images/order_hand.png',
                subHead: '${data.user!.address}',
                date: '${data.pickUpDetails!.date}',
              ),
              kHeight10,
              RowDatas(
                isRow: false,
                heading: 'Pickup Location',
                imageFirst: pickupLocationhand,
                lastImage: pickupLocationIcon,
                subHead: '${data.user!.address}',
                date: '${data.pickUpDetails!.date}',
              ),
              kHeight10,
              RowDatas(
                isRow: true,
                heading: 'Pickup Date',
                subHead: '${data.pickUpDetails!.time}',
                imageFirst: 'assets/images/order_clock.png',
                date: '${data.pickUpDetails!.date}',
              ),
              kHeight20,
              RowDatas(
                isRow: true,
                heading: 'Payment Method',
                subHead: '${data.payment!.type}',
                imageFirst: 'assets/images/order_clock.png',
              ),
              kHeight10,
            ],
          ),
        );
      },
    );
  }
}

class RowDatas extends StatelessWidget {
  const RowDatas({
    super.key,
    this.heading,
    this.imageFirst,
    this.lastImage,
    this.subHead,
    this.isRow,
    this.date,
  });
  final String? heading;
  final String? imageFirst;
  final String? lastImage;
  final String? subHead;
  final bool? isRow;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth10,
        CircleAvatar(
          radius: 14,
          child: CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage('$imageFirst'),
          ),
        ),
        kWidth10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading!),
            isRow == true
                ? Row(
                    children: [
                      Text(
                        '$subHead',
                        maxLines: 3,
                        style: textHeadBold1,
                      ),
                      kWidth10,
                      Text(
                        '$date',
                        maxLines: 3,
                        style: textHeadBold1,
                      ),
                    ],
                  )
                : SizedBox(
                    width: sWidth * .7,
                    child: Text(
                      subHead!,
                      maxLines: 3,
                      style: textHeadBold1,
                    ),
                  ),
          ],
        ),
        isRow == false
            ? CircleAvatar(
                radius: 14,
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(lastImage!),
                ),
              )
            : kEmpty
      ],
    );
  }
}
