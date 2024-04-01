import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/utils/validators.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/pick_up_details.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/product_details.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/promo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DateOrTime extends StatefulWidget {
  const DateOrTime({super.key});

  @override
  State<DateOrTime> createState() => _DateOrTimeState();
}

class _DateOrTimeState extends State<DateOrTime> {
  String? selectedDate;
  String? selectedTime;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<PlaceOrderBloc>().add(const PlaceOrderEvent.getDatetime());
      },
    );
    return BlocConsumer<PlaceOrderBloc, PlaceOrderState>(
      listener: (context, state) {
        if (state.orderPlacedResponceModel != null) {
          secondtabScreensNotifier.value = 5;
          secondtabScreensNotifier.notifyListeners();
          pickupDetailChangeNotifier.value =
              PickupDetailContainers.personalDetails;
          pickupDetailChangeNotifier.notifyListeners();
          context
              .read<PlaceOrderBloc>()
              .add(const PlaceOrderEvent.removeAppliedPromo());
          showSnack(context: context, message: 'Order placed Successfully');
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(
              height: sHeight * .45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('TIME SLOT'),
                  kHeight10,
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
                              hint: Text(
                                'Select Date',
                                style: textHeadInter.copyWith(color: kBlack),
                              ),
                              icon: const Icon(
                                Icons.calendar_month,
                                color: kBlueLight,
                              ),
                              value: selectedDate,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedDate = newValue;
                                });
                              },
                              items: state.dates?.map<DropdownMenuItem<String>>(
                                (String value) {
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
                              hint: Text(
                                'Select Time',
                                style: textHeadInter.copyWith(color: kBlack),
                              ),
                              icon: const Icon(
                                Icons.access_time,
                                color: kBlueLight,
                              ),
                              value: selectedTime,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedTime = newValue;
                                });
                              },
                              items: state.time?.map<DropdownMenuItem<String>>(
                                (String value) {
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
            CustomButton(
              onPressed: () {
                final namecontroller =
                    context.read<PlaceOrderBloc>().nameController.text;
                final emailcontroller =
                    context.read<PlaceOrderBloc>().emailController.text;
                if (namecontroller.isEmpty && emailcontroller.isEmpty) {
                  showSnack(
                    context: context,
                    message: 'Personal Details is empty',
                    color: kRed,
                  );
                  return;
                }

                if (state.selectedRadio == 'upi') {
                  final upiId =
                      context.read<PlaceOrderBloc>().upiIdController.text;
                  if (upiId.isEmpty && !isValidUPI(upiId)) {
                    showSnack(
                      context: context,
                      message: 'UPI ID is not valid',
                      color: kRed,
                    );
                    return;
                  }
                }

                if (selectedTime == null && selectedDate == null) {
                  showSnack(
                    context: context,
                    message: 'Select date and time',
                    color: kRed,
                  );
                  return;
                }
                Promo promo = Promo(
                    code: context
                                .read<PlaceOrderBloc>()
                                .state
                                .promoCodeResponceModel !=
                            null
                        ? context
                            .read<PlaceOrderBloc>()
                            .promocodeController
                            .text
                        : '',
                    price: context
                                .read<PlaceOrderBloc>()
                                .state
                                .promoCodeResponceModel !=
                            null
                        ? context
                            .read<PlaceOrderBloc>()
                            .state
                            .promoCodeResponceModel!
                            .value
                            .toString()
                        : '');
                //PickeDate and time assinning
                PickUpDetails pickUpDetails =
                    PickUpDetails(time: selectedTime, date: selectedDate);
                context.read<PlaceOrderBloc>().add(
                      PlaceOrderEvent.pickupDetailsPick(
                        pickUpDetails: pickUpDetails,
                        promo: promo,
                      ),
                    );

                //Product name concatination
                final verient = context.read<CategoryBlocBloc>().verient;
                final model = context.read<CategoryBlocBloc>().model;
                final name = '$model $verient';

                //ProductDetails object creation and value assigining
                ProductDetails productDetails = ProductDetails(
                  category: context.read<CategoryBlocBloc>().categoryType,
                  slug: context.read<CategoryBlocBloc>().slug,
                  image: context.read<CategoryBlocBloc>().productImage,
                  name: name,
                  price: context.read<QuestionTabBloc>().basePrice.toString(),
                  options: context.read<QuestionTabBloc>().selectedOptions,
                );

                log('Selected options place order ${context.read<QuestionTabBloc>().selectedOptions}');

                context
                    .read<PlaceOrderBloc>()
                    .add(PlaceOrderEvent.productDetailsPick(
                      productDetails: productDetails,
                    ));

                //OrderPlacing event
                context
                    .read<PlaceOrderBloc>()
                    .add(const PlaceOrderEvent.orderPlacing());
              },
              text: state.isLoading ? 'Please wait...' : 'Place Order',
              backgroundColor: kBluePrimary,
            ),
          ],
        );
      },
    );
  }
}
