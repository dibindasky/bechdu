import 'dart:async';
import 'dart:developer';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/single_category_brands_responce_model.dart';
import 'package:beachdu/domain/model/products_model/get_products_responce_model.dart';
import 'package:beachdu/domain/model/products_model/product.dart';
import 'package:beachdu/domain/repository/brands_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'category_bloc_event.dart';
part 'category_bloc_state.dart';
part 'category_bloc_bloc.freezed.dart';

@injectable
class CategoryBlocBloc extends Bloc<CategoryBlocEvent, CategoryBlocState> {
  final BrandsRepository brandsRepository;
  String? categoryType;
  String? barndName;
  String? seriesName;
  String? verient;
  List<List<String>> dropDownItems = [[], [], []];
  CategoryBlocBloc(this.brandsRepository) : super(CategoryBlocState.intial()) {
    on<GetSingleCategoryBrands>(getSingleCategoryBrands);
    on<GetProducts>(getProducts);
    on<GetSeries>(getSeries);
    on<GetModels>(getModels);
    on<GetVarients>(getVarients);
    on<SelectedProduct>(selectedProdct);
  }

  FutureOr<void> selectedProdct(SelectedProduct event, emit) {
    emit(state.copyWith(selectedProduct: event.selectedProduct));
  }

  FutureOr<void> getSingleCategoryBrands(
    GetSingleCategoryBrands event,
    Emitter<CategoryBlocState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await brandsRepository.getSingleCategoryBrands(
        categoryType: event.categoryType ?? 'mobile');
    categoryType = event.categoryType;
    data.fold(
        (failure) => emit(
              state.copyWith(
                isLoading: false,
                hasError: true,
                message: failure.message,
              ),
            ), (successSingleCagetgoryModel) {
      emit(
        state.copyWith(
          isLoading: false,
          hasError: false,
          getSingleCategoryResponce: successSingleCagetgoryModel,
        ),
      );
    });
  }

  FutureOr<void> getProducts(
    GetProducts event,
    Emitter<CategoryBlocState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
    ));
    final data = await brandsRepository.getProducts(
      categoryType: event.categoryType,
      brandName: event.brandName,
    );
    // log('bloc categoryType >>>>=== : ${event.categoryType}');
    // log('bloc brandName >>>>=== : ${event.brandName}');
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
      try {
        dropDownItems[0].clear();
        dropDownItems[1].clear();
        dropDownItems[2].clear();
        print(dropDownItems);
      } catch (e) {
        print(e);
      }
    }, (getproducts) {
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        getProductsResponceModel: getproducts,
      ));
      //categoryType=getproducts.product;
    });
  }

  FutureOr<void> getSeries(GetSeries event, emit) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      message: null,
    ));
    final data = await brandsRepository.getSeries(
      brandName: event.brandName,
      categoryType: event.categoryType,
    );
    log('getSeries bloc categoryType >>>>=== : ${event.categoryType}');
    log('getSeries bloc brandName >>>>=== : ${event.brandName}');
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (getSeriesSuccess) {
      try {
        dropDownItems[0].clear();
        dropDownItems[1].clear();
        dropDownItems[2].clear();
        //print(dropDownItems);
      } catch (e) {
        // print(e);
      }
      dropDownItems[0].addAll(getSeriesSuccess);
      log(getSeriesSuccess.toString());

      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        allItems: dropDownItems,
      ));
      log("getSeries bloc dropDownItems length $dropDownItems");
    });
  }

  FutureOr<void> productUpdate(GetModels event, emit) async {
    List<Product> temp = [];
    for (var element in state.getProductsResponceModel!.product!) {
      if (element.seriesName == event.seriesName) {
        temp.add(element);
      }
    }
    emit(state.copyWith(
      getProductsResponceModel: GetProductsResponceModel(product: temp),
    ));
    // final data = await brandsRepository.getModles(
    //   categoryType: event.categoryType,
    //   brandName: event.brandName,
    //   seriesName: event.seriesName,
    // );
    // data.fold((failure) {
    //   emit(state.copyWith(
    //     hasError: true,
    //     isLoading: false,
    //   ));
    // }, (getModelSucces) {
    //   emit(state.copyWith());
    // });
  }

  FutureOr<void> getModels(GetModels event, emit) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      message: null,
    ));
    final data = await brandsRepository.getModles(
      brandName: event.brandName,
      categoryType: event.categoryType,
      seriesName: event.seriesName,
    );
    log('getModles bloc categoryType >>>>=== : ${event.categoryType}');
    log('getModles bloc brandName >>>>=== : ${event.brandName}');
    log('getModles bloc brandName >>>>=== : ${event.seriesName}');
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (getModelSuccess) {
      dropDownItems[1].addAll(getModelSuccess);
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        allItems: dropDownItems,
      ));
    });
  }

  FutureOr<void> getVarients(GetVarients event, emit) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      message: null,
    ));
    final data = await brandsRepository.getVarients(
      brandName: event.brandName,
      categoryType: event.categoryType,
      seriesName: event.seriesName,
      model: event.model,
    );
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (getVarientsSuccess) {
      dropDownItems[2].addAll(getVarientsSuccess);
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        allItems: dropDownItems,
      ));
    });
  }
}
