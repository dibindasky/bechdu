import 'dart:async';
import 'dart:developer';
import 'package:beachdu/domain/model/get_base_price_model_responce/get_base_price_model_responce.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/get_products_respoce_model.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:beachdu/domain/model/get_question_model/get_question_model.dart';
import 'package:beachdu/domain/model/pickup_question_model/pickup_question_model.dart';
import 'package:beachdu/domain/model/pickup_question_model/selected_option.dart';
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
  int basePrice = 0;
  List<SelectedOption> updatedList = [];
  QuestionTabBloc(this.questionRepo) : super(QuestionTabState.initial()) {
    on<TabChange>(tabChange);
    on<ResetTabSelection>(resetTabSelection);
    on<GetQuestions>(getQuestions);
    on<MarkedQuestions>(markedQuestions);
    on<GetBasePrice>(getBasePrice);
    // on<YesOrNo>(yesOrNo);
  }

  //  FutureOr<void> yesOrNo(YesOrNo event, emit) {
  //   if (
  //       event.selectedOption.type == 'yes/no' &&
  //       event.selectedOption.value != null) {
  //     updatedList.add(event.selectedOption);
  //     answerdCount += 1;
  //     log('Answer count $answerdCount');
  //     log('updatedList count ${updatedList.length}');
  //   }
  // }

  FutureOr<void> markedQuestions(MarkedQuestions event, emit) {
    bool isUnSelect = false;
    event.selectedOption.heading =
        state.getQuestionModel!.sections![state.selectedTabIndex].heading;
    updatedList = List.from(state.selectedOption);
    log('state.selectedOption type ${event.selectedOption.type}');
    log('state.selectedOption value ${event.selectedOption.value}');
    for (var element in state.selectedOption) {
      if (element.description == event.selectedOption.description) {
        updatedList.remove(element);
        answerdCount -= 1;
        log('Answer count $answerdCount');
        log('updatedList count ${updatedList.length}');
        isUnSelect = true;
        break;
      }
    }
    if (isUnSelect &&
        event.selectedOption.type == 'yes/no' &&
        event.selectedOption.value != null) {
      updatedList.add(event.selectedOption);
      answerdCount += 1;
      isUnSelect = false;
      log('Answer count $answerdCount');
      log('updatedList count ${updatedList.length}');
    } else if (!isUnSelect) {
      updatedList.add(event.selectedOption);
      answerdCount += 1;
      log('Answer count $answerdCount');
      log('updatedList count ${updatedList.length}');
    }
    log('updatedList count last ${updatedList.length}');
    isUnSelect = false;
    emit(state.copyWith(
      selectedOption: updatedList,
      answerCount: answerdCount,
    ));
  }

  FutureOr<void> resetTabSelection(ResetTabSelection event, emit) {
    answerdCount = 0;
    updatedList.clear();
    log('answerdCount when resset tab $answerdCount');
    log('updatedList count when resset tab ${updatedList.length}');
    emit(state.copyWith(selectedTabIndex: 0));
  }

  FutureOr<void> tabChange(TabChange event, emit) {
    answerdCount = 0;
    log('answerdCount when tab change $answerdCount');
    if (state.selectedTabIndex < state.getQuestionModel!.sections!.length - 1) {
      emit(state.copyWith(
        answerCount: answerdCount,
        selectedTabIndex: state.selectedTabIndex + 1,
      ));
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
    log('event.pickeQuestionModel ${event.pickupQuestionModel}');
    final data = await questionRepo.getBasePrice(
        pickeQuestionModel: event.pickupQuestionModel);
    data.fold((failure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
      ));
    }, (successResponce) {
      if (successResponce.basePrice != null) {
        basePrice = successResponce.basePrice!;
      }
      log('basePrice bloc variable $basePrice');
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        basePriceModelResponce: successResponce,
      ));
    });
  }
}
