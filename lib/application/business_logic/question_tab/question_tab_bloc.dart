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
  List<SelectedOption> newList = [];
  List<SelectedOption> updatedList = [];

  QuestionTabBloc(this.questionRepo) : super(QuestionTabState.initial()) {
    on<TabChange>(tabChange);
    on<TabMinus>(tabMinus);
    on<ResetTabSelection>(resetTabSelection);
    on<GetQuestions>(getQuestions);
    on<MarkedQuestions>(markedQuestions);
    on<ChangeIndex>(changeIndex);
    on<GetBasePrice>(getBasePrice);
    on<AbandentOrder>(abandentOrder);
    on<YesOrNo>(yesOrNo);
    on<MarkAnswer>(markAnswer);
    on<ClearOneSection>((event, emit) {});
    on<ClearNewOPtionList>(clearOptionList);
    on<GoBackIndex>(goBackIndex);
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
    return emit(
        state.copyWith(message: null, selectedAnswers: map, hasError: false));
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
        message: 'you can go back to the previous step only',
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

  FutureOr<void> clearOptionList(ClearNewOPtionList event, emit) {
    newList.clear();
  }

  FutureOr<void> yesOrNo(YesOrNo event, emit) async {
    print(event.selectedOption.toJson());
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
    print(map);
    if (list.isNotEmpty) {
      print(list.last.value);
    }
    return emit(state.copyWith(
      message: null,
      selectedAnswers: map,
      hasError: false,
    ));
  }

  FutureOr<void> markedQuestions(MarkedQuestions event, emit) {
    bool isYesorNo = false;
    bool other = false;
    for (var i in state.selectedOption) {
      if (i.description == event.selectedOption.description) {
        log('find');
        if (i.value != null && i.value == event.selectedOption.value) {
          log('find 1');
          isYesorNo = true;
        }
        updatedList.remove(i);
        other = true;
        answerdCount--;
        break;
      }
      if (i.selectioType == 'one') {
        updatedList.remove(i);
        answerdCount--;
        break;
      }
    }
    if (event.selectedOption.value != null && !isYesorNo) {
      log('find 3');
      updatedList.add(event.selectedOption);
      answerdCount++;
    } else if (!isYesorNo && event.selectedOption.value == null && !other) {
      log('find 4');
      updatedList.add(event.selectedOption);
      answerdCount++;
    }
    log('Answer count $answerdCount');
    log('updatedList count ${updatedList.length}');
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
    log('New List of SelectedOPtion wen tab chngae ${newList.length}');
    emit(state.copyWith(selectedTabIndex: 0));
  }

  FutureOr<void> tabChange(TabChange event, emit) {
    answerdCount = 0;
    log('New List of SelectedOPtion wen tab chngae ${newList.length}');
    log('answerdCount when tab change $answerdCount');
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
      emit(state.copyWith(message: 'must choose all options', hasError: true));
    } else if (state.sections![state.selectedTabIndex].criteria == 'one' &&
        state.selectedAnswers[state.sections![state.selectedTabIndex].heading]!
                .length !=
            1) {
      emit(state.copyWith(message: 'must choose one option', hasError: true));
    } else if (state.sections![state.selectedTabIndex].criteria == 'some' &&
        state.selectedAnswers[state.sections![state.selectedTabIndex].heading]!
            .isEmpty) {
      emit(
          state.copyWith(message: 'select atleast one option', hasError: true));
    } else if (state.selectedTabIndex != state.sections!.length - 1) {
      emit(state.copyWith(
          message: null, hasError: false, selectedTabIndex: event.index));
    }
    //else if (state.selectedTabIndex == state.sections!.length - 1) {
    //   final login = await SecureSotrage.getlLogin();
    //   if (login == true) {
    //     // ProductDetails productDetails=ProductDetails(name: ,slug: ,options: ,price: ,);
    //     // AbandendOrderRequestModel abandendOrderRequestModel =
    //     //AbandendOrderRequestModel(productDetails: productDetails);
    //     // add(
    //     //   QuestionTabEvent.getBasePrice(
    //     //       abandendOrderRequestModel: abandendOrderRequestModel),
    //     // );
    //     // secondtabScreensNotifier.value = 2;
    //     // secondtabScreensNotifier.notifyListeners();
    //   }
    //}
  }

  FutureOr<void> getQuestions(GetQuestions event, emit) async {
    emit(state.copyWith(
        isLoading: true, sections: null, message: null, hasError: false));
    final result = await questionRepo.getQuestions(
      categoryType: event.categoryType,
    );
    result.fold(
        (l) => emit(state.copyWith(
              hasError: true,
              message: l.message,
              isLoading: false,
            )), (r) {
      Map<String, List<SelectedOption>> map = {};
      if (r.sections != null) {
        for (var element in r.sections!.toList()) {
          if (!map.containsKey(element.heading)) {
            map[element.heading!] = <SelectedOption>[];
          }
        }
      }
      return emit(state.copyWith(
        sections: r.sections,
        isLoading: false,
        selectedAnswers: map,
        hasError: false,
        getQuestionModel: r,
        product: event.product,
      ));
    });
  }

  FutureOr<void> getQuestion(GetQuestions event, emit) async {
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
    List<SelectedOption> list = [];
    for (var element in state.sections!) {
      list.addAll(state.selectedAnswers[element.heading]!);
    }
    for (var element in list) {
      print(element.toJson());
    }
    log('getBasePrice one');

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
        basePriceModelResponce: successResponce,
        selectedOption: newList,
      ));
      if (successResponce.basePrice != null) {
        log('getBasePrice forth');
        basePrice = successResponce.basePrice!;
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
        event.abandendOrderRequestModel.productDetails!.price = '$basePrice';

        log('getBasePrice fiffth');
        add(QuestionTabEvent.abandentOrder(
            abandendOrderRequestModel: event.abandendOrderRequestModel));
        log('getBasePrice sixth');
      }
    });
  }

  FutureOr<void> abandentOrder(AbandentOrder event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    log('abandentOrder first');
    final number = await SecureSotrage.getNumber();
    final location = await SecureSotrage.getSelectedLocation();
    final pincode = await SecureSotrage.getSelectedPincode();
    event.abandendOrderRequestModel.abendendOrderUser!.phone = number;
    event.abandendOrderRequestModel.abendendOrderUser!.city = location;
    event.abandendOrderRequestModel.abendendOrderUser!.pincode = pincode;
    final data = await questionRepo.abandendOrder(
      abandendOrderRequestModel: event.abandendOrderRequestModel,
    );
    log('abandentOrder  ${event.abandendOrderRequestModel.abendendOrderUser!.toJson()}');
    log('abandentOrder  ${event.abandendOrderRequestModel.productDetails!.toJson()}');
    log('abandentOrder second');
    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
      ));
    }, (abandendOrderResponceModel) async {
      log('abandentOrder third');
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          abandendOrderResponceModel: abandendOrderResponceModel,
        ),
      );
      log('abandentOrder forth');
    });
  }
}
