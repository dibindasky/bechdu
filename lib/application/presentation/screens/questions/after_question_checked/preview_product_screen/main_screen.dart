import 'dart:developer';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/preview_product_screen/expansion_tile.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/top_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenProductPreview extends StatelessWidget {
  const ScreenProductPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        secondtabScreensNotifier.value = 0;
        secondtabScreensNotifier.notifyListeners();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        offset: const Offset(0, 1),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                    border: Border.all(color: kBlack),
                    borderRadius: kRadius10,
                  ),
                  child: BlocBuilder<QuestionTabBloc, QuestionTabState>(
                    builder: (context, questionTabBloc) {
                      if (questionTabBloc.isLoading) {
                        return Center(child: LoadingAnimation(width: 50));
                      } else if (questionTabBloc.product == null) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: kGreenPrimary,
                          ),
                        );
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TopImage(
                            fromWhere: FromWhere.recalculateWithAmount,
                          ),
                          kHeight20,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Device Diagnosis',
                              style: textHeadBold1.copyWith(fontSize: 18),
                            ),
                          ),
                          if (questionTabBloc.sections != null)
                            ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: questionTabBloc.sections!.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return ExpansionTileCustom(
                                  name:
                                      questionTabBloc.sections![index].heading!,
                                );
                              },
                            ),
                        ],
                      );
                    },
                  ),
                ),
                kHeight40,
                kHeight40,
                BlocBuilder<QuestionTabBloc, QuestionTabState>(
                  builder: (context, state) {
                    return CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        if (state.basePriceModelResponce != null) {
                          secondtabScreensNotifier.value = 3;
                          secondtabScreensNotifier.notifyListeners();
                        } else {
                          showSnack(
                            context: context,
                            message: 'Please wait some seconds',
                            color: kRed,
                          );
                        }
                      },
                    );
                  },
                ),
                kHeight10
              ],
            ),
          ),
        ),
      ),
    );
  }
}
