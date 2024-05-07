import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/best_selling_products_responce_model/best_selling_products_responce_model.dart';
import 'package:beachdu/domain/model/category_model/get_category_responce_model/get_category_responce_model.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:beachdu/domain/model/home_banners_model/home_banner_responce_model/home_banner_responce_model.dart';
import 'package:beachdu/domain/model/notification/notification_responce_model/notifications.dart';
import 'package:beachdu/domain/model/page_size_query_model/page_size_query_model.dart';
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
  int globalProduct = 1;
  int size = 15;
  TextEditingController globalProductSearchController = TextEditingController();
  HomeBloc(this.homeRepository) : super(HomeState.initial()) {
    on<GetAllCategory>(getAllcategory);
    on<HomePageBanners>(homePageBanners);
    on<GetBestSellingProducts>(getBestSellingProducts);
    on<GlobalPrductSearch>(globalProductSearch);
    on<NextPage>(produstSearchnextPage);
    on<Notification>(notification);
    on<GetNotificationsNext>(getNotificationsNext);
    on<Clear>(clear);
    on<ResetLength>(resetLength);
  }

  FutureOr<void> resetLength(ResetLength event, emit) async {
    if (state.totalNotiLength != null) {
      await SecureSotrage.setNotification(length: state.totalNotiLength!);
      emit(state.copyWith(notiLength: state.totalNotiLength!));
    }
  }

  FutureOr<void> notification(Notification event, emit) async {
    emit(state.copyWith(notificationLoad: true, hasError: false));
    final notiLen = await SecureSotrage.getNotification();
    final login = await SecureSotrage.getlLogin();
    final number = await SecureSotrage.getNumber();
    if (login) {
      final data = await homeRepository.getAllnotification(
          number: number,
          pageSizeQueryModel: PageSizeQueryModel(page: 1, pageSize: size));
      data.fold(
          (l) => emit(state.copyWith(
                notificationLoad: false,
                hasError: true,
              )), (r) {
        emit(
          state.copyWith(
            totalNotiLength: r.length,
            notiLength: notiLen,
            notificationLoad: false,
            hasError: false,
            notifications: r.data!,
          ),
        );
        if (event.reset) {
          add(const HomeEvent.resetLength());
        }
      });
    }
  }

  FutureOr<void> getNotificationsNext(GetNotificationsNext event, emit) async {
    emit(state.copyWith(pageLoading: true, hasError: false));
    final number = await SecureSotrage.getNumber();
    final result = await homeRepository.getAllnotification(
      number: number,
      pageSizeQueryModel: PageSizeQueryModel(
        page: 1,
        pageSize: ++size,
      ),
    );
    result.fold((l) => emit(state.copyWith(pageLoading: false)), (r) {
      emit(state.copyWith(
        pageLoading: false,
        notifications: r.data,
        notiLength: 0,
        totalNotiLength: r.length,
      ));
      add(const HomeEvent.resetLength());
    });
  }

  FutureOr<void> clear(Clear event, emit) {
    emit(HomeState.initial());
  }

  FutureOr<void> produstSearchnextPage(NextPage event, emit) async {
    emit(state.copyWith(loadMore: true));
    final data = await homeRepository.globalProductSearch(
        searchParamModel:
            SearchParamModel(page: ++globalProduct, pageSize: 16));
    data.fold(
      (failure) => emit(
        state.copyWith(loadMore: false, hasError: true),
      ),
      (products) {
        emit(
          state.copyWith(
            loadMore: false,
            hasError: false,
            products: [
              ...state.products ?? [],
              ...products.product!,
            ],
          ),
        );
      },
    );
  }

  FutureOr<void> globalProductSearch(GlobalPrductSearch event, emit) async {
    emit(state.copyWith(loadMore: true, hasError: false));
    globalProduct = 1;

    final data = await homeRepository.globalProductSearch(
      searchParamModel: SearchParamModel(
        page: globalProduct,
        pageSize: 16,
        search: event.searchQuery,
      ),
    );

    data.fold(
        (failure) => emit(
              state.copyWith(
                loadMore: false,
                hasError: true,
              ),
            ), (globalSearchSuccess) {
      emit(
        state.copyWith(
          loadMore: false,
          hasError: false,
          searchResponceModel: globalSearchSuccess,
          products: globalSearchSuccess.product,
        ),
      );
    });
  }

  FutureOr<void> getBestSellingProducts(
      GetBestSellingProducts event, emit) async {
    if (state.bestSellingProductsResponceModel != null &&
        event.isLoad == false) {
      return;
    }
    emit(state.copyWith(bestSellingLoad: true, hasError: false));
    final data = await homeRepository.getBestSellingProducts();
    data.fold(
      (failure) => emit(
        state.copyWith(
          bestSellingLoad: false,
          hasError: true,
        ),
      ),
      (bestSellingSuccess) => emit(
        state.copyWith(
          bestSellingLoad: false,
          hasError: false,
          bestSellingProductsResponceModel: bestSellingSuccess,
        ),
      ),
    );
  }

  FutureOr<void> homePageBanners(HomePageBanners event, emit) async {
    if ((state.homeBannerResponceModel != null ||
            state.homeBannerResponceModel?.sectionOne != null ||
            state.homeBannerResponceModel?.sectionTwo != null) &&
        !event.isLoad) return;
    emit(state.copyWith(bannerLoad: true, hasError: false));
    final data = await homeRepository.getbanners();
    data.fold(
      (failure) => emit(
        state.copyWith(
          bannerLoad: false,
          hasError: true,
          message: failure.message,
        ),
      ),
      (homePageBananers) => emit(
        state.copyWith(
          bannerLoad: false,
          hasError: false,
          homeBannerResponceModel: homePageBananers,
        ),
      ),
    );
  }

  FutureOr<void> getAllcategory(
    GetAllCategory event,
    Emitter<HomeState> emit,
  ) async {
    if (state.getCategoryResponceModel != null && event.isLoad == false) return;
    emit(state.copyWith(whatToSellLoad: true, hasError: false));
    final data = await homeRepository.getAllCategory();
    data.fold(
        (failure) => emit(state.copyWith(
              whatToSellLoad: false,
              hasError: true,
              message: failure.message,
            )), (successCagetgoryModel) {
      emit(state.copyWith(
        whatToSellLoad: false,
        hasError: false,
        getCategoryResponceModel: successCagetgoryModel,
      ));
    });
  }
}
