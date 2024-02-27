import 'dart:developer';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/question_anwer_sesstion/answer_session.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/question_tab_row/question_tab_row.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/top_image.dart';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_request_model/abandend_order_request_model.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_request_model/product_details.dart';
import 'package:beachdu/domain/model/pickup_question_model/pickup_question_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class QuestionTabs extends StatelessWidget {
  const QuestionTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        secondtabScreensNotifier.value = 0;
        secondtabScreensNotifier.notifyListeners();
        context
            .read<QuestionTabBloc>()
            .add(const QuestionTabEvent.resetTabSelection());
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 40,
            automaticallyImplyLeading: false,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocBuilder<QuestionTabBloc, QuestionTabState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const LoadingAnimation(width: 100);
                } else if (state.hasError) {
                  return const Text('error');
                } else {
                  if (state.getQuestionModel == null ||
                      state.getQuestionModel!.sections == null) {
                    return Center(child: Lottie.asset(emptyLottie));
                  } else {
                    return Column(
                      children: [
                        const TopImage(fromWhere: FromWhere.questionScreen),
                        kHeight10,
                        const QuestionScreenTabs(),
                        kHeight20,
                        const QuestionTabAnswerSession(),
                        kHeight10,
                        BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
                          builder: (context, categorybloc) {
                            return BlocBuilder<QuestionTabBloc,
                                QuestionTabState>(
                              builder: (context, questionTabBloc) {
                                return CustomButton(
                                  onPressed: () {
                                    final currentSection = questionTabBloc
                                            .getQuestionModel!.sections![
                                        questionTabBloc.selectedTabIndex];
                                    final criteria = currentSection.criteria;
                                    if (questionTabBloc.selectedTabIndex ==
                                        questionTabBloc.getQuestionModel!
                                                .sections!.length -
                                            1) {
                                      if (criteria == 'all') {
                                        if (questionTabBloc.answerCount ==
                                            currentSection.options!.length) {
                                          loginOrNot(context, questionTabBloc);
                                        } else {
                                          showSnack(
                                            context: context,
                                            message: 'Select all options',
                                          );
                                        }
                                      } else if (criteria == 'some') {
                                        if (questionTabBloc.answerCount >= 1) {
                                          loginOrNot(context, questionTabBloc);
                                        } else {
                                          showSnack(
                                            context: context,
                                            message:
                                                'Select at least one option',
                                          );
                                        }
                                      } else if (criteria == 'one') {
                                        if (questionTabBloc.answerCount == 1) {
                                          loginOrNot(context, questionTabBloc);
                                        } else {
                                          showSnack(
                                            context: context,
                                            message: 'Select only one option',
                                          );
                                        }
                                      } else {
                                        loginOrNot(context, questionTabBloc);
                                      }
                                    }
                                    if (criteria == 'all') {
                                      if (questionTabBloc.answerCount ==
                                          currentSection.options!.length) {
                                        context
                                            .read<QuestionTabBloc>()
                                            .add(const TabChange());
                                      } else {
                                        showSnack(
                                          context: context,
                                          message: 'Select all options',
                                        );
                                      }
                                    } else if (criteria == 'some') {
                                      if (questionTabBloc.answerCount >= 1) {
                                        context
                                            .read<QuestionTabBloc>()
                                            .add(const TabChange());
                                      } else {
                                        showSnack(
                                          context: context,
                                          message: 'Select at least one option',
                                        );
                                      }
                                    } else if (criteria == 'one') {
                                      if (questionTabBloc.answerCount == 1) {
                                        context
                                            .read<QuestionTabBloc>()
                                            .add(const TabChange());
                                      } else {
                                        showSnack(
                                          context: context,
                                          message: 'Select atleast one option',
                                        );
                                      }
                                    } else {
                                      context
                                          .read<QuestionTabBloc>()
                                          .add(const TabChange());
                                    }
                                  },
                                  text: questionTabBloc.selectedTabIndex !=
                                          questionTabBloc.getQuestionModel!
                                                  .sections!.length -
                                              1
                                      ? 'Continue'
                                      : 'Calculate price',
                                );
                              },
                            );
                          },
                        ),
                        kHeight10,
                      ],
                    );
                  }
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginOrNot(
    BuildContext context,
    QuestionTabState questionTabBloc,
  ) async {
    final login = await SecureSotrage.getlLogin();
    if (login) {
      // ignore: use_build_context_synchronously
      pickeQuestionModelEventDataPass(context, questionTabBloc);
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushNamed(Routes.signInOrLogin, arguments: true);
    }
  }

  void pickeQuestionModelEventDataPass(
    BuildContext context,
    QuestionTabState questionBlocState,
  ) {
    secondtabScreensNotifier.value = 2;
    secondtabScreensNotifier.notifyListeners();

    PickupQuestionModel pickepQuestionModel = PickupQuestionModel(
      categoryType: context.read<CategoryBlocBloc>().categoryType,
      productSlug: context.read<CategoryBlocBloc>().slug,
      selectedOptions: context.read<QuestionTabBloc>().state.selectedOption,
    );

    //Product name Concatination
    final verient = context.read<CategoryBlocBloc>().verient;
    final model = context.read<CategoryBlocBloc>().model;
    final name = '$verient $model';

    ProductDetails productDetails = ProductDetails(
      slug: context.read<CategoryBlocBloc>().slug,
      name: name,
      options: questionBlocState.selectedOption,
    );

    AbandendOrderRequestModel abandendOrderRequestModel =
        AbandendOrderRequestModel(productDetails: productDetails);

    context.read<QuestionTabBloc>().add(
          GetBasePrice(
            pickupQuestionModel: pickepQuestionModel,
            abandendOrderRequestModel: abandendOrderRequestModel,
          ),
        );
    //context.read<QuestionTabBloc>().add(const ResetTabSelection());
  }
}
