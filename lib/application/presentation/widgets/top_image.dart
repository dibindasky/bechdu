import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopImage extends StatelessWidget {
  const TopImage({super.key, required this.fromWhere});

  final FromWhere fromWhere;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (fromWhere == FromWhere.pickupScreen)
          const Positioned(
            top: -30,
            right: 59,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: kBlueLight,
            ),
          ),
        if (fromWhere == FromWhere.pickupScreen)
          const Positioned(
            left: 150,
            bottom: -20,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: kGreenLight,
            ),
          ),
        BlocBuilder<QuestionTabBloc, QuestionTabState>(
          builder: (context, questiontabBloc) {
            if (questiontabBloc.getQuestionModel != null &&
                questiontabBloc.getQuestionModel!.sections != null) {
              final image = questiontabBloc.product!.productImage!;
              String url =
                  "${ApiEndPoints.baseUrlImagePath}${Uri.encodeComponent(image)}";
              return SizedBox(
                height: fromWhere == FromWhere.recalculateWithAmount
                    ? sWidth * .36
                    : fromWhere == FromWhere.checkoutAndPickupScreen
                        ? sWidth * .6
                        : sWidth * .34,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ColoredBox(
                    color: kGreenPrimary,
                    child: Row(
                      children: [
                        fromWhere == FromWhere.pickupScreen ||
                                fromWhere == FromWhere.checkoutAndPickupScreen
                            ? kWidth20
                            : kEmpty,
                        SizedBox(
                          height: fromWhere == FromWhere.checkoutAndPickupScreen
                              ? sWidth * .38
                              : sWidth * .27,
                          width: fromWhere == FromWhere.checkoutAndPickupScreen
                              ? sWidth * .34
                              : sWidth * .27,
                          child: Image.network(
                            url,
                            fit: BoxFit.fill,
                          ),
                        ),
                        fromWhere == FromWhere.pickupScreen ||
                                fromWhere == FromWhere.checkoutAndPickupScreen
                            ? kEmpty
                            : kWidth5,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (fromWhere == FromWhere.questionScreen ||
                                fromWhere == FromWhere.recalculateWithAmount)
                              FittedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      '${questiontabBloc.product!.model?.replaceAll('Samsung ', '')}',
                                      style: textHeadBold1.copyWith(
                                        fontSize: sWidth * .043,
                                        color: kWhite,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    kWidth5,
                                    Text(
                                      '${questiontabBloc.product!.variant}',
                                      style: textHeadMedium1.copyWith(
                                        color: kWhite,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            fromWhere == FromWhere.checkoutAndPickupScreen
                                ? kHeight10
                                : kEmpty,
                            if (fromWhere == FromWhere.recalculateWithAmount)
                              BlocBuilder<QuestionTabBloc, QuestionTabState>(
                                builder: (context, state) {
                                  if (state.isLoading) {
                                    return Center(
                                      child: LoadingAnimation(
                                        width: 40,
                                        color: kWhite,
                                      ),
                                    );
                                  }
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      questiontabBloc.basePriceModelResponce !=
                                              null
                                          ? Text(
                                              '₹ ${questiontabBloc.basePriceModelResponce!.basePrice}',
                                              style: textHeadBoldBig.copyWith(
                                                color: kWhite,
                                              ),
                                            )
                                          : Text(
                                              '₹ 0',
                                              style: textHeadBoldBig.copyWith(
                                                color: kWhite,
                                              ),
                                            ),
                                      Row(
                                        children: [
                                          Text(
                                            'Not Satisfied with our price ?',
                                            overflow: TextOverflow.ellipsis,
                                            style: textHeadMedium1.copyWith(
                                              color: kWhite,
                                              fontSize: sWidth * .025,
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              secondtabScreensNotifier.value =
                                                  1;
                                              secondtabScreensNotifier
                                                  .notifyListeners();
                                              context
                                                  .read<QuestionTabBloc>()
                                                  .add(
                                                      const ResetTabSelection());
                                            },
                                            child: Text(
                                              'Recalculate',
                                              overflow: TextOverflow.ellipsis,
                                              style: textHeadInter.copyWith(
                                                fontSize: sWidth * .030,
                                                color: kWhite,
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: kWhite,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              ),
                            if (fromWhere ==
                                    FromWhere.checkoutAndPickupScreen ||
                                fromWhere == FromWhere.pickupScreen)
                              Text(
                                  '${questiontabBloc.product!.model?.replaceAll('Samsung ', '')}',
                                  style: textHeadBold1.copyWith(
                                      color: kWhite, fontSize: sWidth * .05),
                                  overflow: TextOverflow.ellipsis),
                            kHeight5,
                            if (fromWhere ==
                                    FromWhere.checkoutAndPickupScreen ||
                                fromWhere == FromWhere.pickupScreen)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${questiontabBloc.product!.variant}',
                                      style: textHeadMedium1.copyWith(
                                          color: kWhite),
                                      overflow: TextOverflow.ellipsis),
                                  Text(
                                      '₹ ${questiontabBloc.basePriceModelResponce!.basePrice}',
                                      style: textHeadBoldBig.copyWith(
                                        color: kWhite,
                                      ),
                                      overflow: TextOverflow.ellipsis)
                                ],
                              ),
                            if (fromWhere == FromWhere.questionScreen)
                              Row(
                                children: [
                                  Text(
                                    'Device Diagnosis',
                                    style:
                                        textHeadBoldBig.copyWith(color: kWhite),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return const Icon(
                Icons.refresh,
              );
            }
          },
        ),
      ],
    );
  }
}
