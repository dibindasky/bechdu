import 'dart:async';
import 'package:beachdu/domain/model/best_selling_products_responce_model/best_selling_products_responce_model.dart';
import 'package:beachdu/domain/model/category_model/get_category_responce_model/get_category_responce_model.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:beachdu/domain/model/home_banners_model/home_banner_responce_model/home_banner_responce_model.dart';
import 'package:beachdu/domain/model/search_model/global_product_search_responce_model/global_product_search_responce_model.dart';
import 'package:beachdu/domain/model/search_model/search_param_model/search_param_model.dart';
import 'package:beachdu/domain/model/search_model/search_responce_model/search_responce_model.dart';
import 'package:beachdu/domain/repository/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  String? slug;
  int pageNumber = 1;
  bool isScrollLoading = false;
  List<Product> productList = [];

  TextEditingController globalProductSearchController = TextEditingController();
  HomeBloc(this.homeRepository) : super(HomeState.initial()) {
    on<GetAllCategory>(getAllcategory);
    on<Selectedactegory>(selectedCategory);
    on<HomePageBanners>(homePageBanners);
    on<GetBestSellingProducts>(getBestSellingProducts);
    on<GlobalPrductSearch>(globalProductSearch);
    on<NextPage>(nextPage);
  }

  FutureOr<void> nextPage(NextPage event, emit) async {
    emit(state.copyWith(loadMore: true));
    final data = await homeRepository.globalProductSearch(
        searchParamModel: SearchParamModel(
      page: ++pageNumber,
    ));
    data.fold(
      (failure) => emit(
        state.copyWith(loadMore: false, hasError: true),
      ),
      (products) {
        emit(
          state.copyWith(
            loadMore: true,
            hasError: false,
            products: [
              ...state.products!,
              ...products.product!,
            ],
          ),
        );
      },
    );
  }

  FutureOr<void> globalProductSearch(GlobalPrductSearch event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    pageNumber = 1;
    event.searchParamModel.page = pageNumber;
    event.searchParamModel.pageSize = 11;
    final data = await homeRepository.globalProductSearch(
      searchParamModel: event.searchParamModel,
    );

    data.fold(
        (failure) => emit(
              state.copyWith(
                isLoading: false,
                hasError: true,
              ),
            ), (globalSearchSuccess) {
      emit(
        state.copyWith(
          isLoading: false,
          hasError: false,
          searchResponceModel: globalSearchSuccess,
          products: globalSearchSuccess.product,
        ),
      );
    });
  }

  FutureOr<void> getBestSellingProducts(
      GetBestSellingProducts event, emit) async {
    if (state.bestSellingProductsResponceModel != null) return;
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await homeRepository.getBestSellingProducts();

    data.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
        ),
      ),
      (bestSellingSuccess) => emit(
        state.copyWith(
          isLoading: false,
          hasError: false,
          bestSellingProductsResponceModel: bestSellingSuccess,
        ),
      ),
    );
  }

  FutureOr<void> homePageBanners(HomePageBanners event, emit) async {
    if (state.homeBannerResponceModel != null) return;
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await homeRepository.getbanners();
    data.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
          message: failure.message,
        ),
      ),
      (homePageBananers) => emit(
        state.copyWith(
          isLoading: false,
          hasError: false,
          homeBannerResponceModel: homePageBananers,
        ),
      ),
    );
  }

  FutureOr<void> selectedCategory(Selectedactegory event, emit) {
    emit(state.copyWith(selectedCategory: event.category));
  }

  FutureOr<void> getAllcategory(
    GetAllCategory event,
    Emitter<HomeState> emit,
  ) async {
    if (state.getCategoryResponceModel != null) return;
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await homeRepository.getAllCategory();
    data.fold(
        (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: failure.message,
            )), (successCagetgoryModel) {
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        getCategoryResponceModel: successCagetgoryModel,
      ));
    });
  }
}
