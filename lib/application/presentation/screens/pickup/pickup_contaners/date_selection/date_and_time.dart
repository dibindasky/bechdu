import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/date_selection/date_picking_bottom_sheet.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/pick_up_details.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DateOrTime extends StatefulWidget {
  const DateOrTime({super.key});

  @override
  State<DateOrTime> createState() => _DateOrTimeState();
}

class _DateOrTimeState extends State<DateOrTime> {
  final dateController = TextEditingController();
  String selectedTime = 'Time';

  @override
  Widget build(BuildContext context) {
    return BlocListener<PlaceOrderBloc, PlaceOrderState>(
      listener: (context, state) {
        if (state.orderPlacedResponceModel != null &&
            state.orderPlacedResponceModel!.order != null) {
          secondtabScreensNotifier.value = 5;
          secondtabScreensNotifier.notifyListeners();
        } else {
          showSnack(
            context: context,
            message: state.orderPlacedResponceModel!.message!,
          );
        }
      },
      child: Column(
        children: [
          SizedBox(
            height: sHeight * .45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('TIME SLOT'),
                kHeight10,
                InkWell(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return DatePickingBottomSheet(
                        onPressed: (date) {
                          setState(() {
                            dateController.text = date;
                          });
                        },
                        datePicker: dateController,
                      );
                    },
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 12),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: textFieldBorderColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            dateController.text.isEmpty
                                ? 'Date'
                                : dateController.text,
                            style: dateController.text.isEmpty
                                ? textHeadSemiBold1.copyWith(
                                    color: textFieldBorderColor,
                                  )
                                : textHeadSemiBold1,
                          ),
                        ),
                        const Icon(
                          Icons.calendar_month,
                          color: kBlueLight,
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight20,
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 12),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: textFieldBorderColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            icon: const Icon(
                              Icons.access_time,
                              color: kBlueLight,
                            ),
                            value: selectedTime,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedTime = newValue!;
                              });
                            },
                            items: <String>[
                              'Time',
                              '3:01 PM',
                              '3:00 PM',
                              '7:00 PM',
                              '8:00 PM'
                            ].map<DropdownMenuItem<String>>(
                              (String value) {
                                if (value == 'Time') {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: textHeadSemiBold1.copyWith(
                                          color: textFieldBorderColor),
                                    ),
                                  );
                                }
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: textHeadSemiBold1.copyWith(
                                      fontSize: sWidth * 0.04,
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<QuestionTabBloc, QuestionTabState>(
            builder: (context, questiontabBlocState) {
              return CustomButton(
                onPressed: () {
                  if (selectedTime != 'Time' &&
                      dateController.text.isNotEmpty) {
                    if (context
                            .read<PlaceOrderBloc>()
                            .emailController
                            .text
                            .isNotEmpty &&
                        context
                            .read<PlaceOrderBloc>()
                            .nameController
                            .text
                            .isNotEmpty &&
                        context
                            .read<PlaceOrderBloc>()
                            .numberController
                            .text
                            .isNotEmpty) {
                      //PickeDate and time assinning
                      PickUpDetails pickUpDetails = PickUpDetails(
                          time: dateController.text, date: selectedTime);
                      context.read<PlaceOrderBloc>().add(
                            PlaceOrderEvent.pickupDetailsPick(
                                pickUpDetails: pickUpDetails),
                          );

                      //Product name concatination
                      final verient = context.read<CategoryBlocBloc>().verient;
                      final model = context.read<CategoryBlocBloc>().model;
                      final name = '$model $verient';

                      //ProductDetails object creation and value assigining
                      ProductDetails productDetails = ProductDetails(
                        slug: context.read<CategoryBlocBloc>().slug,
                        image: context.read<CategoryBlocBloc>().productImage,
                        name: name,
                        price: context
                            .read<QuestionTabBloc>()
                            .basePrice
                            .toString(),
                        options: context
                            .read<QuestionTabBloc>()
                            .state
                            .selectedOption,
                      );
                      log('Question picked options length ${context.read<QuestionTabBloc>().state.selectedOption.length}');
                      //Product details event call
                      context
                          .read<PlaceOrderBloc>()
                          .add(PlaceOrderEvent.productDetailsPick(
                            productDetails: productDetails,
                          ));

                      //OrderPlacing event
                      context
                          .read<PlaceOrderBloc>()
                          .add(const PlaceOrderEvent.orderPlacing());

                      // pickupDetailChangeNotifier.value =
                      //     PickupDetailContainers.personalDetails;
                      // pickupDetailChangeNotifier.notifyListeners();
                    } else {
                      showSnack(
                        context: context,
                        message: 'Please fill personal details',
                      );
                    }
                  } else {
                    showSnack(
                      context: context,
                      message: 'Please select Date and Time',
                    );
                  }
                },
                text: 'Place Order',
                backgroundColor: kBluePrimary,
              );
            },
          ),
        ],
      ),
    );
  }
}
