import 'dart:developer';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/question_anwer_sesstion/answer_session.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/top_image.dart';
import 'package:beachdu/domain/model/picke_question_model/picke_question_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            child: Column(
              children: [
                const TopImage(fromWhere: FromWhere.questionScreen),
                kHeight10,
                const QuestionScreenTabs(),
                kHeight20,
                const QuestionTabAnswerSession(),
                kHeight10,
                BlocBuilder<QuestionTabBloc, QuestionTabState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const LoadingAnimation(width: 100);
                    } else if (state.hasError) {
                      return const Center(
                        child: Text('Fetch error'),
                      );
                    } else {
                      if (state.getQuestionModel != null ||
                          state.getQuestionModel!.sections != null) {
                        return CustomButton(
                          onPressed: () {
                            final currentSection = state.getQuestionModel!
                                .sections![state.selectedTabIndex];
                            final criteria = currentSection.criteria;
                            if (state.selectedTabIndex ==
                                state.getQuestionModel!.sections!.length - 1) {
                              if (criteria == 'all') {
                                if (state.answerCount ==
                                    currentSection.options!.length) {
                                  pickeQuestionModelEventDataPass(context);
                                } else {
                                  showSnack(
                                    context: context,
                                    message: 'Select all options',
                                  );
                                }
                              } else if (criteria == 'some') {
                                if (state.answerCount >= 1) {
                                  pickeQuestionModelEventDataPass(context);
                                } else if (criteria == 'one') {
                                  if (state.answerCount == 1) {
                                    pickeQuestionModelEventDataPass(context);
                                  }
                                  showSnack(
                                    context: context,
                                    message: 'Select at least one option',
                                  );
                                }
                              } else if (criteria == 'one') {
                                if (state.answerCount == 1) {
                                  pickeQuestionModelEventDataPass(context);
                                } else {
                                  showSnack(
                                    context: context,
                                    message: 'Select only one option',
                                  );
                                }
                              } else {
                                pickeQuestionModelEventDataPass(context);
                              }
                            }
                            if (criteria == 'all') {
                              if (state.answerCount ==
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
                              if (state.answerCount >= 1) {
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
                              if (state.answerCount == 1) {
                                context
                                    .read<QuestionTabBloc>()
                                    .add(const TabChange());
                              } else {
                                showSnack(
                                  context: context,
                                  message: 'Select only one option',
                                );
                              }
                            } else {
                              context
                                  .read<QuestionTabBloc>()
                                  .add(const TabChange());
                            }
                          },
                          text: state.selectedTabIndex !=
                                  state.getQuestionModel!.sections!.length - 1
                              ? 'Continue'
                              : 'Calculate price',
                        );
                      } else {
                        return const Center(
                          child: Text('Empty'),
                        );
                      }
                    }
                  },
                ),
                kHeight10,
              ],
            ),
          ),
        ),
      ),
    );
  }

  void pickeQuestionModelEventDataPass(BuildContext context) {
    PickeQuestionModel pickeQuestionModel = PickeQuestionModel(
      categoryType: context.read<CategoryBlocBloc>().categoryType,
      productSlug: context.read<CategoryBlocBloc>().slug,
      selectedOptions: context.read<QuestionTabBloc>().state.selectedOption,
    );
    context
        .read<QuestionTabBloc>()
        .add(GetBasePrice(pickeQuestionModel: pickeQuestionModel));
    context.read<QuestionTabBloc>().add(const ResetTabSelection());
    secondtabScreensNotifier.value = 2;
    secondtabScreensNotifier.notifyListeners();
  }
}

// class QuestionScreenTabs extends StatelessWidget {
//   const QuestionScreenTabs({super.key,});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<QuestionTabBloc, QuestionTabState>(
//       builder: (context, state) {
//         if (state.isLoading) {
//           return const LoadingAnimation(width: 100);
//         }
//         if (state.hasError) {
//           return const Center(
//             child: Text('Fetch Error'),
//           );
//         } else if (state.getQuestionModel != null &&
//             state.getQuestionModel!.sections != null) {
//           final int latestVisitedTabIndex = state.latestVisitedTabIndex ?? 0;

//           return SizedBox(
//             width: sWidth,
//             child: FittedBox(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: List.generate(
//                   state.getQuestionModel!.sections!.length,
//                   (index) {
//                     final bool isTabEnabled = index <= latestVisitedTabIndex;
//                     return GestureDetector(
//                       onTap: isTabEnabled
//                           ? () {
//                               context.read<QuestionTabBloc>().add(
//                                     QuestionTabEvent.selectTab(index),
//                                   );
//                               // Add logic to handle tab selection
//                             }
//                           : null,
//                       child: ClipRRect(
//                         borderRadius: kRadius15,
//                         child: ColoredBox(
//                           color: index == state.selectedTabIndex
//                               ? kGreenPrimary
//                               : isTabEnabled
//                                   ? knill
//                                   : klightgrey.withOpacity(0.5),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 10,
//                               vertical: 3,
//                             ),
//                             child: Text(
//                               state.getQuestionModel!.sections![index].heading!,
//                               style: textHeadSemiBold1.copyWith(
//                                 color: index == state.selectedTabIndex
//                                     ? kWhite
//                                     : isTabEnabled
//                                         ? kBlack
//                                         : klightgrey,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           );
//         } else {
//           return const Text('No questions');
//         }
//       },
//     );
//   }
// }

class QuestionScreenTabs extends StatelessWidget {
  const QuestionScreenTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingAnimation(width: 100);
        }
        if (state.hasError) {
          return const Center(
            child: Text('Fetch  Error got'),
          );
        } else if (state.getQuestionModel != null ||
            state.getQuestionModel!.sections != null) {
          const Text('No question');
          log('queston tab lngth ${state.getQuestionModel!.sections!.length}');
        }
        return SizedBox(
          width: sWidth,
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                state.getQuestionModel!.sections!.length,
                (index) => ClipRRect(
                  borderRadius: kRadius15,
                  child: ColoredBox(
                    color:
                        index == state.selectedTabIndex ? kGreenPrimary : knill,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      child: Text(
                        state.getQuestionModel!.sections![index].heading!,
                        style: textHeadSemiBold1.copyWith(
                          color:
                              index == state.selectedTabIndex ? kWhite : kBlack,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
