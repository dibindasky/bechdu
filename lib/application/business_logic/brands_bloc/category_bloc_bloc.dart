import 'dart:async';
import 'dart:developer';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/brands.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/single_category_brands_responce_model.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/get_products_respoce_model.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';

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
  String? slug;
  String? model;
  String? productImage;
  List<Brands> brandsList = [];
  List<Product> productList = [];
  List<String> series = [];
  List<List<String>> dropDownItems = List.generate(1, (_) => []);
  CategoryBlocBloc(this.brandsRepository) : super(CategoryBlocState.intial()) {
    on<GetSingleCategoryBrands>(getSingleCategoryBrands);
    on<BrandSearch>(brandSearch);
    on<GetProducts>(getProducts);
    on<ProductSearch>(productSearch);
    on<GetSeries>(getSeries);
    on<SeriesSearch>(seriesSearch);
    on<GetModels>(getModels);
    on<GetVarients>(getVarients);
    on<SelectedProduct>(selectedProdct);
  }

  FutureOr<void> seriesSearch(
    SeriesSearch event,
    Emitter<CategoryBlocState> emit,
  ) {
    final String searchQuery = event.searchQuery.toLowerCase();
    final List<String> filteredSeries = series.where((item) {
      final String series = item.toLowerCase();
      return series.contains(searchQuery);
    }).toList();

    emit(state.copyWith(filteredSeries: filteredSeries));
  }

  FutureOr<void> productSearch(
    ProductSearch event,
    Emitter<CategoryBlocState> emit,
  ) async {
    final String searchQuery = event.searchQuery.toLowerCase().trim();
    final List<Product> filteredProducts = productList.where((product) {
      final String model = product.model!.toLowerCase();
      final String varient = product.variant!.toLowerCase();
      final String brand = product.brandName!.toLowerCase();
      return model.contains(searchQuery) ||
          varient.contains(searchQuery) ||
          brand.contains(searchQuery);
    }).toList();
    emit(state.copyWith(
      filteredProducts: filteredProducts,
    ));
  }

  FutureOr<void> search(
    BrandSearch event,
    Emitter<CategoryBlocState> emit,
  ) async {
    final String searchQuery = event.searchQuery.toLowerCase();
    final List<Product> filteredProducts = productList.where((product) {
      final String model = product.model!.toLowerCase();
      final String brand = product.brandName!.toLowerCase();
      final String series = product.seriesName!.toLowerCase();
      return model.contains(searchQuery) ||
          brand.contains(searchQuery) ||
          series.contains(searchQuery);
    }).toList();

    final List<Brands> filteredBrands = brandsList.where((brand) {
      final String brandName = brand.brandName!.toLowerCase();
      return brandName.contains(searchQuery);
    }).toList();
    emit(state.copyWith(
      filteredProducts: filteredProducts,
      filteredBrands: filteredBrands,
    ));
  }

  FutureOr<void> brandSearch(
    BrandSearch event,
    Emitter<CategoryBlocState> emit,
  ) {
    final String searchQuery = event.searchQuery.toLowerCase().trim();
    final List<Brands> filteredBrands = brandsList.where((brand) {
      final String brandName = brand.brandName!.toLowerCase();
      return brandName.contains(searchQuery);
    }).toList();
    emit(state.copyWith(
      filteredBrands: filteredBrands,
    ));
  }

  FutureOr<void> selectedProdct(SelectedProduct event, emit) {
    emit(state.copyWith(selectedProduct: event.selectedProduct));
  }

  FutureOr<void> getSingleCategoryBrands(
    GetSingleCategoryBrands event,
    Emitter<CategoryBlocState> emit,
  ) async {
    //if (state.getSingleCategoryResponce != null) return;
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
      brandsList.clear();
      for (Brands element in successSingleCagetgoryModel.brands!) {
        brandsList.add(element);
      }
      emit(
        state.copyWith(
          isLoading: false,
          hasError: false,
          getSingleCategoryResponce: successSingleCagetgoryModel,
          filteredBrands: brandsList,
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
      seriesName: event.seriesName,
    );

    barndName = event.brandName;
    seriesName = event.seriesName;
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (getproducts) {
      productList.clear();
      for (Product element in getproducts.products!) {
        productList.add(element);
      }
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        getProductsResponceModel: getproducts,
        filteredProducts: productList,
      ));
    });
  }

  FutureOr<void> getSeries(GetSeries event, emit) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
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
      series.clear();
      series.addAll(getSeriesSuccess);
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        filteredSeries: getSeriesSuccess,
      ));
    });
  }

  FutureOr<void> productUpdate(GetModels event, emit) async {
    List<Product> temp = [];
    for (var element in state.getProductsResponceModel!.products!) {
      if (element.seriesName == event.seriesName) {
        temp.add(element);
      }
    }
    emit(state.copyWith(
      getProductsResponceModel: GetProductsRespoceModel(products: temp),
    ));
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
    log('getModles bloc seriesName >>>>=== : ${event.seriesName}');
    log('getModles data ${data.toString()}');
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (getModelSuccess) {
      dropDownItems.clear();
      dropDownItems[0].addAll(getModelSuccess);
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
      dropDownItems[1].clear();
      dropDownItems[1].addAll(getVarientsSuccess);
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        allItems: dropDownItems,
      ));
    });
  }
}
