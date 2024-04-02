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
  List<String> seriesList = [];
  List<List<String>> updatedItems = [];
  String? modelFilter;
  String? varientFilter;
  List<String> series = [];
  CategoryBlocBloc(this.brandsRepository) : super(CategoryBlocState.intial()) {
    on<GetSingleCategoryBrands>(getSingleCategoryBrands);
    on<BrandSearch>(brandSearch);
    on<GetProducts>(getProducts);
    on<ProductSearch>(productSearch);
    on<GetProductbasedOnCategoryAndBrand>(getProductbasedOnCategoryAndBrand);
    on<GetSeries>(getSeries);
    on<SeriesSearch>(seriesSearch);
    on<GetModels>(getModels);
    on<GetVarients>(getVarients);
    on<Clear>(clear);
  }

  FutureOr<void> getProductbasedOnCategoryAndBrand(
      GetProductbasedOnCategoryAndBrand event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: true, message: null));
    final data = await brandsRepository.getProductsBasedOnCategoryAndBrand(
        categoryType: event.category, brandName: event.brand);
    data.fold(
        (l) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
            )), (r) {
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        filteredProducts: r.products,
      ));
      add(
        CategoryBlocEvent.getModels(
          categoryType: categoryType!,
          brandName: barndName!,
          seriesName: seriesName!,
        ),
      );
    });
  }

  FutureOr<void> clear(Clear event, emit) {
    emit(CategoryBlocState.intial());
  }

  FutureOr<void> productSearch(
    ProductSearch event,
    Emitter<CategoryBlocState> emit,
  ) async {
    final String searchQuery =
        event.searchQuery.toLowerCase().trim().replaceAll(' ', '');
    final List<Product> filteredProducts = productList.where((product) {
      final String model =
          product.model!.toLowerCase().trim().replaceAll(' ', '');
      final String varient =
          product.variant!.toLowerCase().trim().replaceAll(' ', '');
      final String brand =
          product.brandName!.toLowerCase().trim().replaceAll(' ', '');
      return model.contains(searchQuery) ||
          varient.contains(searchQuery) ||
          brand.contains(searchQuery);
    }).toList();
    emit(state.copyWith(
      filteredProducts: filteredProducts,
    ));
  }

  FutureOr<void> brandSearch(
    BrandSearch event,
    Emitter<CategoryBlocState> emit,
  ) {
    final String searchQuery =
        event.searchQuery.toLowerCase().trim().replaceAll(' ', '');
    final List<Brands> filteredBrands = brandsList.where((brand) {
      final String brandName =
          brand.brandName!.toLowerCase().trim().replaceAll(' ', '');
      return brandName.contains(searchQuery);
    }).toList();
    emit(state.copyWith(
      filteredBrands: filteredBrands,
    ));
    //log(filteredBrands.toString());
  }

  FutureOr<void> seriesSearch(
    SeriesSearch event,
    Emitter<CategoryBlocState> emit,
  ) {
    final String searchQuery =
        event.searchQuery.toLowerCase().trim().replaceAll(' ', '');
    final List<String> filteredSeries = seriesList.where((item) {
      final String series = item.toLowerCase().trim().replaceAll(' ', '');
      return series.contains(searchQuery);
    }).toList();
    emit(
      state.copyWith(filteredSeries: filteredSeries),
    );
    // log(filteredSeries.toString());
  }

  FutureOr<void> getSingleCategoryBrands(
    GetSingleCategoryBrands event,
    Emitter<CategoryBlocState> emit,
  ) async {
    if (state.getSingleCategoryResponce != null && event.isLoad == false) {
      return;
    }

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
          varients: [],
          models: [],
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
    log('seriesName $seriesName');
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (getproducts) {
      productList = getproducts.products ?? [];
      if (modelFilter == 'All') {
        productList = getproducts.products ?? [];
      }
      if (modelFilter != null && modelFilter != 'All') {
        productList = productList
            .where((product) => product.model == modelFilter)
            .toList();
      }
      // if (varientFilter == 'All') {
      //   log('All');
      //   productList = getproducts.products ?? [];
      // }
      if (varientFilter != null) {
        productList = productList
            .where((product) => product.variant == varientFilter)
            .toList();
      }
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        getProductsResponceModel: getproducts,
        filteredProducts: productList,
      ));
      if (modelFilter != 'All') {
        add(
          CategoryBlocEvent.getModels(
            categoryType: categoryType!,
            brandName: barndName!,
            seriesName: seriesName!,
          ),
        );
      }
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
      seriesList.clear();
      seriesList.addAll(getSeriesSuccess);
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        filteredSeries: seriesList,
        varients: [],
      ));
    });
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
    varientFilter = null;
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (getModelSuccess) {
      List<String> models = [];
      models.clear();
      models.addAll(getModelSuccess);
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        models: models,
        allItems: updatedItems,
        varients: [],
      ));
      if (modelFilter != null) {
        add(CategoryBlocEvent.getVarients(
          brandName: event.brandName,
          categoryType: event.categoryType,
          seriesName: event.seriesName,
          model: modelFilter!,
        ));
      }
    });
  }

  FutureOr<void> getVarients(GetVarients event, emit) async {
    emit(state.copyWith(
      hasError: false,
      message: null,
    ));
    final data = await brandsRepository.getVarients(
      brandName: event.brandName,
      categoryType: event.categoryType,
      seriesName: event.seriesName,
      model: event.model,
    );
    modelFilter = event.model;
    data.fold((failure) {
      emit(state.copyWith(
        hasError: true,
      ));
    }, (getVarientsSuccess) {
      emit(state.copyWith(
        hasError: false,
        varients: getVarientsSuccess,
      ));
    });
  }
}
