import 'dart:async';
import 'dart:developer';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/single_category_brands_responce_model.dart';
import 'package:beachdu/domain/model/get_models_responce_model/get_models_responce_model.dart';
import 'package:beachdu/domain/model/get_series_responce_model/get_series_responce_model.dart';
import 'package:beachdu/domain/model/get_varient_responce_model/get_varient_responce_model.dart';
import 'package:beachdu/domain/model/products_model/get_products_responce_model.dart';
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

  CategoryBlocBloc(this.brandsRepository) : super(CategoryBlocState.intial()) {
    on<GetSingleCategoryBrands>(getSingleCategoryBrands);
    on<GetProducts>(getProducts);
    on<GetSeries>(getSeries);
    on<GetModels>(getModels);
    on<GetVarients>(getVarients);
    on<Search>(search);
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
    data.fold(
        (failure) => emit(
              state.copyWith(
                isLoading: false,
                hasError: true,
                message: failure.message,
              ),
            ), (successSingleCagetgoryModel) {
      // List<String> brandsList = [];
      // for (var element in successSingleCagetgoryModel.brands!) {
      //   if (element.brandName != null) {
      //     brandsList.add(element.brandName!);
      //   }
      // }
      //log('Bloc getSingleCategoryBrands brands list  ${brandsList.length}');
      emit(
        state.copyWith(
          isLoading: false,
          hasError: false,
          getSingleCategoryResponce: successSingleCagetgoryModel,
          // allItems: [brandsList],
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
    }, (getproducts) {
      List<String> productList = [];
      for (var element in getproducts.product!) {
        if (element.seriesName != null) {
          productList.add(element.seriesName!);
        }
        //log("getProducts productList items ${element.seriesName}");
      }
      //log('getProducts bloc productList.length ${productList.length}');
      // var list = state.allItems;
      // log(list.toString());
      // list.add(productList);
      // log(list.toString());
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        getProductsResponceModel: getproducts,
        allItems: [productList],
      ));
    });
  }

  FutureOr<void> getSeries(GetSeries event, emit) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      message: null,
      getSeriesResponceModel: null,
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
      List<String> seriesList = [];
      for (var element in getSeriesSuccess.series!) {
        if (element.name != null) {
          seriesList.add(element.name!);
        }
      }
      log('getSeries bloc seriesList.length ${seriesList.length}');
      state.allItems.add(seriesList);
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        getSeriesResponceModel: getSeriesSuccess,
        allItems: state.allItems,
      ));
      log("getSeries state Allitems length ${state.allItems.length}");
    });
  }

  FutureOr<void> getModels(GetModels event, emit) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      message: null,
      getSeriesResponceModel: null,
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
      List<String> modelList = [];
      for (var element in getModelSuccess.models!) {
        if (element.name != null) {
          modelList.add(element.name!);
        }
      }
      log('getModles bloc modelList.length ${modelList.length}');
      state.allItems.add(modelList);
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        getModelsResponceModel: getModelSuccess,
        allItems: state.allItems,
      ));
    });
  }

  FutureOr<void> getVarients(GetVarients event, emit) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      message: null,
      getSeriesResponceModel: null,
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
      List<String> vareintList = [];
      for (var element in getVarientsSuccess.variant!) {
        if (element.name != null) {
          vareintList.add(element.name!);
        }
      }
      log('getVarients bloc modelList.length ${vareintList.length}');
      state.allItems.add(vareintList);
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        getVarientResponceModel: getVarientsSuccess,
        allItems: state.allItems,
      ));
    });
  }

  FutureOr<void> search(
    Search event,
    Emitter<CategoryBlocState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
    ));
    final data =
        await brandsRepository.searchBrands(serachQuery: event.searchQuery);
    data.fold((l) => null, (getSearchSuccess) {});
  }
}
