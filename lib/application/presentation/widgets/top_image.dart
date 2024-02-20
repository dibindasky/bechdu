import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopImage extends StatelessWidget {
  const TopImage({super.key, required this.fromWhere});

  final FromWhere fromWhere;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -30,
          right: 59,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: kBlueLight.withOpacity(.16),
          ),
        ),
        Positioned(
          left: 150,
          bottom: -20,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: kBlueLight.withOpacity(.15),
          ),
        ),
        BlocBuilder<QuestionTabBloc, QuestionTabState>(
          builder: (context, questiontabBloc) {
            if (questiontabBloc.isLoading) {
              return const LoadingAnimation(width: 100);
            } else if (questiontabBloc.hasError) {
              return const Center(
                child: Text(errorMessage),
              );
            } else {
              if (questiontabBloc.getQuestionModel != null ||
                  questiontabBloc.getQuestionModel!.sections != null) {
                final image = questiontabBloc.product!.productImage!;
                String url =
                    "${ApiEndPoints.baseUrlImagePath}${Uri.encodeComponent(image)}";
                return SizedBox(
                  height: sWidth * .37,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ColoredBox(
                      color: kGreenPrimary.withOpacity(.73),
                      child: Row(
                        children: [
                          kWidth10,
                          SizedBox(
                            height: sWidth * .3,
                            width: sWidth * .16,
                            child: Image.network(url),
                          ),
                          kWidth10,
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
                                        '${questiontabBloc.product!.model}',
                                        style: textHeadBold1.copyWith(
                                            color: kWhite),
                                      ),
                                      kWidth10,
                                      Text(
                                        '${questiontabBloc.product!.variant}',
                                        style: textHeadMedium1.copyWith(
                                            color: kWhite),
                                      ),
                                    ],
                                  ),
                                ),
                              if (fromWhere == FromWhere.recalculateWithAmount)
                                questiontabBloc.basePriceModelResponce != null
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questiontabBloc.basePriceModelResponce!.basePrice}',
                                            style: textHeadBoldBig.copyWith(
                                              color: kWhite,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: sWidth * .36,
                                                child: Text(
                                                  'Not Satisfied with our price ?',
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: textHeadMedium1
                                                      .copyWith(color: kWhite),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  secondtabScreensNotifier
                                                      .value = 1;
                                                  secondtabScreensNotifier
                                                      .notifyListeners();
                                                  context
                                                      .read<QuestionTabBloc>()
                                                      .add(
                                                          const ResetTabSelection());
                                                },
                                                child: Text(
                                                  'Recalculate',
                                                  style: textHeadInter.copyWith(
                                                    color: kWhite,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    decorationColor: kWhite,
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    : const Icon(Icons.error),
                              if (fromWhere ==
                                  FromWhere.checkoutAndPickupScreen)
                                Text(
                                  '${questiontabBloc.product!.model}',
                                  style: textHeadBold1.copyWith(color: kWhite),
                                ),
                              kHeight5,
                              if (fromWhere ==
                                  FromWhere.checkoutAndPickupScreen)
                                questiontabBloc.basePriceModelResponce != null
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questiontabBloc.product!.variant}',
                                            style: textHeadMedium1.copyWith(
                                                color: kWhite),
                                          ),
                                          Text(
                                            '${questiontabBloc.basePriceModelResponce!.basePrice}',
                                            style: textHeadBoldBig.copyWith(
                                              color: kWhite,
                                            ),
                                          ),
                                        ],
                                      )
                                    : const Icon(Icons.error),
                              kHeight5,
                              if (fromWhere == FromWhere.questionScreen)
                                Text(
                                  'Divice Diagnosis',
                                  style:
                                      textHeadBoldBig.copyWith(color: kWhite),
                                )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return const Text('Empty');
              }
            }
          },
        ),
      ],
    );
  }
}
