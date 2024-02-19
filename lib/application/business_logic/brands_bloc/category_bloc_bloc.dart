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
  List<Brands> brandsList = [];
  List<Product> productList = [];
  List<List<String>> dropDownItems = [];
  CategoryBlocBloc(this.brandsRepository) : super(CategoryBlocState.intial()) {
    on<GetSingleCategoryBrands>(getSingleCategoryBrands);
    on<BrandSearch>(brandSearch);
    on<GetProducts>(getProducts);
    on<ProductSearch>(productSearch);
    on<GetSeries>(getSeries);
    on<GetModels>(getModels);
    on<GetVarients>(getVarients);
    on<SelectedProduct>(selectedProdct);
  }

  FutureOr<void> productSearch(
    ProductSearch event,
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
    emit(state.copyWith(
      filteredProducts: filteredProducts,
    ));
  }

  FutureOr<void> brandSearch(
    BrandSearch event,
    Emitter<CategoryBlocState> emit,
  ) async {
    final String searchQuery = event.searchQuery.toLowerCase();
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
    );
    barndName = event.brandName;
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
      log('${failure.message}');
      try {
        dropDownItems[0].clear();
        dropDownItems[1].clear();
        dropDownItems[2].clear();
        log('dropdwon items $dropDownItems');
      } catch (e) {
        print(e);
      }
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
    for (var element in state.getProductsResponceModel!.products!) {
      if (element.seriesName == event.seriesName) {
        temp.add(element);
      }
    }
    emit(state.copyWith(
      getProductsResponceModel: GetProductsRespoceModel(products: temp),
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
    seriesName = event.seriesName;
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
