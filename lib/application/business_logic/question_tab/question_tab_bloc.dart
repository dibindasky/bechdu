import 'dart:async';
import 'dart:developer';
import 'package:beachdu/domain/model/get_base_price_model_responce/get_base_price_model_responce.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/get_products_respoce_model.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:beachdu/domain/model/get_question_model/get_question_model.dart';
import 'package:beachdu/domain/model/picke_question_model/picke_question_model.dart';
import 'package:beachdu/domain/model/picke_question_model/selected_option.dart';
import 'package:beachdu/domain/repository/question_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'question_tab_event.dart';
part 'question_tab_state.dart';
part 'question_tab_bloc.freezed.dart';

@injectable
class QuestionTabBloc extends Bloc<QuestionTabEvent, QuestionTabState> {
  final QuestionRepo questionRepo;
  int answerdCount = 0;
  int questionCount = 0;
  QuestionTabBloc(this.questionRepo) : super(QuestionTabState.initial()) {
    on<TabChange>(tabChange);
    on<ResetTabSelection>(resetTabSelection);
    on<GetQuestions>(getQuestions);
    on<MarkedQuestions>(markedQuestions);
    on<GetBasePrice>(getBasePrice);
  }

  FutureOr<void> markedQuestions(MarkedQuestions event, emit) {
    // questionCount = state
    //     .getQuestionModel!.sections![state.selectedTabIndex].options!.length;
    // log('QuestionCount $questionCount');
    event.selectedOption.heading =
        state.getQuestionModel!.sections![state.selectedTabIndex].heading;
    List<SelectedOption> updatedList = List.from(state.selectedOption);
    for (var element in state.selectedOption) {
      if (element.description == event.selectedOption.description) {
        updatedList.remove(element);
        answerdCount -= 1;
        break;
      }
    }
    answerdCount += 1;
    updatedList.add(event.selectedOption);
    log('answerdCount $answerdCount');
    log('updatedList count ${updatedList.length}');
    log('Selected Option list count bloc ${state.selectedOption.length}');
    emit(state.copyWith(
      selectedOption: updatedList,
      answerCount: answerdCount,
    ));
  }

  FutureOr<void> resetTabSelection(ResetTabSelection event, emit) {
    emit(state.copyWith(selectedTabIndex: 0));
  }

  FutureOr<void> tabChange(TabChange event, emit) {
    if (state.getQuestionModel != null ||
        state.getQuestionModel!.sections != null) {
      answerdCount = 0;
      if (state.selectedTabIndex <
          state.getQuestionModel!.sections!.length - 1) {
        emit(state.copyWith(
          selectedTabIndex: state.selectedTabIndex + 1,
        ));
      }
    }
  }

  FutureOr<void> getQuestions(GetQuestions event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await questionRepo.getQuestions(
      categoryType: event.categoryType,
    );
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
        message: failure.message,
      ));
    }, (getQuestions) {
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        getQuestionModel: getQuestions,
        product: event.product,
      ));
    });
  }

  FutureOr<void> getBasePrice(GetBasePrice event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await questionRepo.getBasePrice(
        pickeQuestionModel: event.pickeQuestionModel);
    log('getBasePrice Bloc ${event.pickeQuestionModel}');
    data.fold((failure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
      ));
    }, (successResponce) {
      log('successResponce $successResponce');
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        basePriceModelResponce: successResponce,
      ));
    });
  }
}
