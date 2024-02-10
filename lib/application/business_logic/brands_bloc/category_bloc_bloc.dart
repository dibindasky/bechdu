import 'dart:async';
import 'dart:developer';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/brands.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/single_category_brands_responce_model.dart';
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
    on<Search>(search);
  }

  FutureOr<void> getSingleCategoryBrands(
    GetSingleCategoryBrands event,
    Emitter<CategoryBlocState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await brandsRepository.getSingleCategoryBrands(
        categoryType: event.categoryType ?? 'mobile');
    data.fold(
        (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: failure.message,
            )), (successSingleCagetgoryModel) {
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        getSingleCategoryResponce: successSingleCagetgoryModel,
      ));
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
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        getProductsResponceModel: getproducts,
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
    data.fold((l) => null, (success) {});
  }
}
