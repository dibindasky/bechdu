import 'dart:async';
import 'dart:developer';
import 'package:beachdu/domain/model/get_question_model/get_question_model.dart';
import 'package:beachdu/domain/model/picke_question_model/selected_option.dart';
import 'package:beachdu/domain/model/products_model/get_products_responce_model.dart';
import 'package:beachdu/domain/model/products_model/product.dart';
import 'package:beachdu/domain/repository/question_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'question_tab_event.dart';
part 'question_tab_state.dart';
part 'question_tab_bloc.freezed.dart';

@injectable
class QuestionTabBloc extends Bloc<QuestionTabEvent, QuestionTabState> {
  final QuestionRepo questionRepo;
  QuestionTabBloc(this.questionRepo) : super(QuestionTabState.initial()) {
    on<TabChange>(tabChange);
    on<ResetTabSelection>(resetTabSelection);
    on<GetQuestions>(getQuestions);
    on<MarkedQuestions>(markedQuestions);
    on<CountQuestionNumber>(countQuestionNumber);
  }

  FutureOr<void> markedQuestions(MarkedQuestions event, emit) {
    for (var element in state.selectedOption) {}
  }

  FutureOr<void> resetTabSelection(ResetTabSelection event, emit) {
    emit(state.copyWith(selectedTabIndex: 0));
  }

  FutureOr<void> tabChange(TabChange event, emit) {
    if (state.getQuestionModel != null ||
        state.getQuestionModel!.sections != null) {
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
        getQuestionModel: null,
      ));
    }, (getQuestions) {
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        getQuestionModel: getQuestions,
        product: event.product,
      ));
      log('getQuestions event.product ${event.product.categoryType}');
    });
  }

  FutureOr<void> countQuestionNumber(CountQuestionNumber event, emit) {}
}
