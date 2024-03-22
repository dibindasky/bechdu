// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/widgets/status_colored_box.dart';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_request_model/abandend_order_request_model.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_request_model/product_details.dart';
import 'package:beachdu/domain/model/pickup_question_model/pickup_question_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnswerIndexChanger extends StatelessWidget {
  const AnswerIndexChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<QuestionTabBloc, QuestionTabState>(
          builder: (context, state) {
            return StatusColoredBox(
              onTap: () {
                context.read<QuestionTabBloc>().add(
                    QuestionTabEvent.changeIndex(
                        index: state.selectedTabIndex + 1));
                if (state.selectedTabIndex == state.sections!.length - 1 &&
                    state.hasError == false) {
                  loginOrNot(context, state);
                }
              },
              text: 'Continue',
              color: kGreenPrimary,
              fontWeight: FontWeight.w700,
              verticalPadding: 10,
            );
          },
        ),
      ],
    );
  }

  Future<void> loginOrNot(
    BuildContext context,
    QuestionTabState questionTabBloc,
    //AuthState authState,
  ) async {
    final login = await SecureSotrage.getlLogin();
    if (!login) {
      Navigator.of(context).pushNamed(
        Routes.signInOrLogin,
        arguments: LoginWay.fromQuestionPick,
      );
      // if (authState.otpVerifyResponceModel != null) {
      //   log('Question pick in condition');
      //   pickeQuestionModelEventDataPass(context, questionTabBloc);
      // }
    } else {
      pickeQuestionModelEventDataPass(context, questionTabBloc);
    }
  }

  void pickeQuestionModelEventDataPass(
    BuildContext context,
    QuestionTabState questionBlocState,
  ) {
    secondtabScreensNotifier.value = 2;
    secondtabScreensNotifier.notifyListeners();

    //Abended order
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
  }
}
