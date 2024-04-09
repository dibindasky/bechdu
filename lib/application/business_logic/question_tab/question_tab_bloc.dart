import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/get_base_price_model_responce/get_base_price_model_responce.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/get_products_respoce_model.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:beachdu/domain/model/get_question_model/get_question_model.dart';
import 'package:beachdu/domain/model/get_question_model/section.dart';
import 'package:beachdu/domain/model/pickup_question_model/pickup_question_model.dart';
import 'package:beachdu/domain/model/pickup_question_model/selected_option.dart';
import 'package:beachdu/domain/repository/question_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/model/order_model/abandend_order_request_model/abandend_order_request_model.dart';
import '../../../domain/model/order_model/abandend_order_request_model/abendend_order_user.dart';
import '../../../domain/model/order_model/abandend_order_responce_model/abandend_order_responce_model.dart';
part 'question_tab_event.dart';
part 'question_tab_state.dart';
part 'question_tab_bloc.freezed.dart';

@injectable
class QuestionTabBloc extends Bloc<QuestionTabEvent, QuestionTabState> {
  final QuestionRepo questionRepo;
  int answerdCount = 0;
  num basePrice = 0;
  // Product? product;
  List<SelectedOption> selectedOptions = [];

  QuestionTabBloc(this.questionRepo) : super(QuestionTabState.initial()) {
    on<TabChange>(tabChange);
    on<TabMinus>(tabMinus);
    on<GetQuestions>(getQuestions);
    on<ResetTabSelection>(resetTabSelection);
    on<ChangeIndex>(changeIndex);
    on<GetBasePrice>(getBasePrice);
    on<AbandentOrder>(abandentOrder);
    on<YesOrNo>(yesOrNo);
    on<MarkAnswer>(markAnswer);
    on<GoBackIndex>(goBackIndex);
    on<Clear>(clear);
  }

  FutureOr<void> resetTabSelection(ResetTabSelection event, emit) {
    emit(state.copyWith(selectedTabIndex: 0));
  }

  FutureOr<void> clear(Clear event, emit) {
    emit(QuestionTabState.initial());
  }

  FutureOr<void> markAnswer(MarkAnswer event, emit) {
    var map = Map<String, List<SelectedOption>>.from(state.selectedAnswers);
    List<SelectedOption> list =
        map[state.sections![state.selectedTabIndex].heading!]!;
    int index = list.indexWhere(
        (element) => element.description == event.selectedOption.description);
    if (state.sections![state.selectedTabIndex].criteria != 'one') {
      if (index == -1) {
        // not found
        list.add(event.selectedOption);
      } else {
        // remove existing value
        list.removeAt(index);
      }
    } else {
      if (index == -1) {
        list.clear();
        list.add(event.selectedOption);
      } else {
        list.clear();
      }
    }
    map[state.sections![state.selectedTabIndex].heading!] = list;
    print(map);
    if (list.isNotEmpty) {
      print(list.first.value);
    }
    return emit(state.copyWith(
      message: null,
      selectedAnswers: map,
      hasError: false,
    ));
  }

  FutureOr<void> goBackIndex(GoBackIndex event, emit) async {
    if (event.index > state.selectedTabIndex ||
        event.index == state.selectedTabIndex) {
      return;
    }
    if (event.index + 1 == state.selectedTabIndex) {
      emit(state.copyWith(
          message: null, hasError: false, selectedTabIndex: event.index));
    } else {
      emit(state.copyWith(
        message: 'You can go back to the previous step only',
        hasError: true,
      ));
    }
  }

  FutureOr<void> tabMinus(TabMinus event, emit) {
    if (state.selectedTabIndex > 0 && state.selectedTabIndex < event.index) {
      emit(state.copyWith(
        answerCount: answerdCount,
        selectedTabIndex: state.selectedTabIndex - 1,
      ));
    }
  }

  FutureOr<void> yesOrNo(YesOrNo event, emit) async {
    var map = Map<String, List<SelectedOption>>.from(state.selectedAnswers);
    List<SelectedOption> list =
        map[state.sections![state.selectedTabIndex].heading!]!;
    int index = list.indexWhere(
        (element) => element.description == event.selectedOption.description);
    if (state.sections![state.selectedTabIndex].criteria != 'one') {
      if (index == -1) {
        // not found
        list.add(event.selectedOption);
      } else if (list[index].value != event.selectedOption.value) {
        // replace yes with no or no with yes
        list[index] = event.selectedOption;
      } else {
        // remove existing value
        list.removeAt(index);
      }
    } else {
      if (index == -1 ||
          (list[index].value != event.selectedOption.value &&
              list[index].description == event.selectedOption.description)) {
        list.clear();
        list.add(event.selectedOption);
      } else {
        list.clear();
      }
    }
    map[state.sections![state.selectedTabIndex].heading!] = list;
    return emit(state.copyWith(
      message: null,
      selectedAnswers: map,
      hasError: false,
    ));
  }

  FutureOr<void> tabChange(TabChange event, emit) {
    if (state.selectedTabIndex < state.getQuestionModel!.sections!.length - 1) {
      emit(state.copyWith(
        answerCount: answerdCount,
        selectedTabIndex: state.selectedTabIndex + 1,
      ));
    }
  }

  FutureOr<void> changeIndex(ChangeIndex event, emit) async {
    if (state.sections![state.selectedTabIndex].criteria == 'all' &&
        state.selectedAnswers[state.sections![state.selectedTabIndex].heading]!
                .length !=
            state.sections![state.selectedTabIndex].options!.length) {
      emit(state.copyWith(
        message: 'Must select all options',
        hasError: true,
        lastChecking: false,
      ));
    } else if (state.sections![state.selectedTabIndex].criteria == 'one' &&
        state.selectedAnswers[state.sections![state.selectedTabIndex].heading]!
                .length !=
            1) {
      emit(state.copyWith(
        message: 'Must select one option',
        hasError: true,
        lastChecking: false,
      ));
    } else if (state.sections![state.selectedTabIndex].criteria == 'some' &&
        state.selectedAnswers[state.sections![state.selectedTabIndex].heading]!
            .isEmpty) {
      emit(state.copyWith(
        message: 'Select atleast one option',
        hasError: true,
        lastChecking: false,
      ));
    } else if (state.selectedTabIndex != state.sections!.length - 1) {
      emit(state.copyWith(
        message: null,
        hasError: false,
        selectedTabIndex: event.index,
        lastChecking: false,
      ));
    } else if (state.selectedTabIndex == state.sections!.length - 1) {
      emit(state.copyWith(
        message: null,
        hasError: false,
        lastChecking: true,
      ));
    }
  }

  FutureOr<void> getQuestions(GetQuestions event, emit) async {
    emit(state.copyWith(
      isLoading: true,
      sections: null,
      message: null,
      hasError: false,
      lastChecking: false,
    ));
    final result = await questionRepo.getQuestions(
      categoryType: event.categoryType,
    );
    result.fold(
        (l) => emit(state.copyWith(
              hasError: true,
              message: l.message,
              isLoading: false,
              lastChecking: false,
            )), (r) {
      //product = event.product;
      Map<String, List<SelectedOption>> map = {};
      if (r.sections != null) {
        for (var element in r.sections!.toList()) {
          if (!map.containsKey(element.heading)) {
            map[element.heading!] = <SelectedOption>[];
          }
        }
      }
      emit(state.copyWith(
        sections: r.sections,
        isLoading: false,
        selectedAnswers: map,
        hasError: false,
        lastChecking: false,
        getQuestionModel: r,
        product: event.product,
      ));
    });
  }

  FutureOr<void> getBasePrice(GetBasePrice event, emit) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      lastChecking: false,
    ));
    selectedOptions.clear();
    for (var element in state.sections!) {
      selectedOptions.addAll(state.selectedAnswers[element.heading]!);
    }
    log('getBasePrice one');
    event.pickupQuestionModel.selectedOptions = selectedOptions;
    final data = await questionRepo.getBasePrice(
      pickeQuestionModel: event.pickupQuestionModel,
    );
    log('getBasePrice second');
    data.fold((failure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
      ));
    }, (successResponce) async {
      log('getBasePrice third');
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        lastChecking: false,
        basePriceModelResponce: successResponce,
        sections: state.sections,
      ));
      log('Sections state sections ${state.sections?.toList()}');
      log('Product detail getBasePrice bloc ${state.product?.toJson()}');
      if (successResponce.basePrice != null) {
        log('getBasePrice forth');
        basePrice = successResponce.basePrice!;
        log('baseprice ${successResponce.basePrice}');
        final phone = await SecureSotrage.getNumber();
        final city = await SecureSotrage.getSelectedLocation();
        final pincode = await SecureSotrage.getSelectedPincode();
        AbendendOrderUser abendendOrderUser = AbendendOrderUser(
          phone: phone,
          city: city,
          pincode: pincode,
        );
        log('User datas bloc $phone $city $pincode');
        event.abandendOrderRequestModel.abendendOrderUser = abendendOrderUser;
        event.abandendOrderRequestModel.productDetails?.price = '$basePrice';
        event.abandendOrderRequestModel.productDetails?.options =
            selectedOptions;
        log('getBasePrice fiffth');
        add(QuestionTabEvent.abandentOrder(
            abandendOrderRequestModel: event.abandendOrderRequestModel));
        log('getBasePrice sixth');
      }
    });
  }

  FutureOr<void> abandentOrder(AbandentOrder event, emit) async {
    log('abandentOrder first');
    // final number = await SecureSotrage.getNumber();
    // final location = await SecureSotrage.getSelectedLocation();
    // final pincode = await SecureSotrage.getSelectedPincode();
    // event.abandendOrderRequestModel.abendendOrderUser!.phone = number;
    // event.abandendOrderRequestModel.abendendOrderUser!.city = location;
    // event.abandendOrderRequestModel.abendendOrderUser!.pincode = pincode;
    // event.abandendOrderRequestModel.productDetails!.options = selectedOptions;
    final data = await questionRepo.abandendOrder(
      abandendOrderRequestModel: event.abandendOrderRequestModel,
    );
    log('abandentOrder  ${event.abandendOrderRequestModel.abendendOrderUser!.toJson()}');
    log('abandentOrder  ${event.abandendOrderRequestModel.productDetails!.toJson()}');
    log('abandentOrder second');
    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
      ));
    }, (abandendOrderResponceModel) async {
      log('abandentOrder third');
      emit(
        state.copyWith(
          hasError: false,
          abandendOrderResponceModel: abandendOrderResponceModel,
        ),
      );
      log('abandentOrder complete');
    });
  }
}
