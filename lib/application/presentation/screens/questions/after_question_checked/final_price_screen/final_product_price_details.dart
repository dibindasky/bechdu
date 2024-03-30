import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/promo_code_model/promo_code_request_model/promo_code_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinalProductPriceDetaails extends StatelessWidget {
  const FinalProductPriceDetaails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          kHeight30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 230,
                child: Text(
                  'Pickup Charges',
                  style: textHeadRegular1.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Text('Free',
                  style: textHeadMedium1.copyWith(color: kGreenPrimary)),
              Text(
                '₹ 200',
                style: textHeadMedium1.copyWith(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: kBlack,
                  decorationThickness: 2.0,
                ),
              ),
            ],
          ),
          kHeight10,
          BlocConsumer<PlaceOrderBloc, PlaceOrderState>(
            listener: (context, state) {
              if (state.hasError) {
                showSnack(
                  context: context,
                  message: state.message ?? errorMessage,
                  color: kRed,
                );
              }
              if (state.promoCodeResponceModel != null) {
                showSnack(
                  context: context,
                  message: 'Promocode Applied succssfully',
                );
              }
            },
            builder: (context, state) {
              return TextFormField(
                controller: context.read<PlaceOrderBloc>().promocodeController,
                style: textHeadMedium1.copyWith(
                  color: kBlack,
                  fontSize: sWidth * 0.033,
                ),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  suffixIcon: TextButton(
                    onPressed: () {
                      if (context
                          .read<PlaceOrderBloc>()
                          .promocodeController
                          .text
                          .isEmpty) {
                        showSnack(
                          context: context,
                          message: 'Please enter your promo code',
                          color: kRed,
                        );
                      } else {
                        PromoCodeRequestModel promoCodeRequestModel =
                            PromoCodeRequestModel(
                          enteredCode: context
                              .read<PlaceOrderBloc>()
                              .promocodeController
                              .text
                              .trim(),
                        );
                        context.read<PlaceOrderBloc>().add(
                              PlaceOrderEvent.getPromoCode(
                                promoCodeRequestModel: promoCodeRequestModel,
                              ),
                            );
                      }
                    },
                    child: BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                      builder: (context, state) {
                        if (state.promoCodeResponceModel == null) {
                          return Text(
                            state.isLoading ? 'Applying' : 'Apply',
                            style: textHeadRegular1,
                          );
                        } else {
                          return Container(
                            padding: const EdgeInsets.only(left: 10),
                            height: 30,
                            width: 115,
                            decoration: BoxDecoration(
                              borderRadius: kRadius5,
                              color: kBluePrimary,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Applied',
                                  style: textHeadInter.copyWith(color: kWhite),
                                ),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  iconSize: 18,
                                  onPressed: () {
                                    context.read<PlaceOrderBloc>().add(
                                          const PlaceOrderEvent
                                              .removeAppliedPromo(),
                                        );
                                  },
                                  icon: const Icon(
                                    Icons.cancel,
                                    color: kRed,
                                    size: 15,
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  fillColor: kWhiteextra,
                  filled: true,
                  hintText: 'Enter promo code',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              );
            },
          ),
          kHeight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Applied',
                style: textHeadMedium1.copyWith(color: kGreenPrimary),
              ),
              BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                builder: (context, state) {
                  if (state.promoCodeResponceModel == null) {
                    return const Text('₹ 0');
                  }
                  final value = context.read<PlaceOrderBloc>().value;
                  return Text(
                    '₹ $value',
                  );
                },
              ),
            ],
          ),
          kHeight20,
          const Divider(thickness: 2),
          kHeight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: textHeadSemiBold1.copyWith(fontSize: sWidth * .039),
              ),
              BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                builder: (context, state) {
                  if (state.promoCodeResponceModel != null) {
                    final basePrice = context.read<QuestionTabBloc>().basePrice;
                    final value = context.read<PlaceOrderBloc>().value;
                    return Row(
                      children: [
                        Text(
                          '₹ $basePrice  +',
                          style: textHeadSemiBold1.copyWith(
                            fontSize: sWidth * .039,
                          ),
                        ),
                        kWidth10,
                        Text(
                          '₹ $value',
                          style: textHeadSemiBold1.copyWith(
                            fontSize: sWidth * .039,
                          ),
                        ),
                      ],
                    );
                  }
                  final basePrice = context.read<QuestionTabBloc>().basePrice;
                  return Text(
                    '₹ $basePrice',
                    style: textHeadSemiBold1.copyWith(fontSize: sWidth * .039),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
