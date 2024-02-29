import 'dart:async';
import 'package:beachdu/domain/model/category_model/get_category_responce_model/get_category_responce_model.dart';
import 'package:beachdu/domain/model/home_banners_model/home_banner_responce_model/home_banner_responce_model.dart';
import 'package:beachdu/domain/repository/home_repo.dart';
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
  HomeBloc(this.homeRepository) : super(HomeState.initial()) {
    on<GetAllCategory>(getAllcategory);
    on<Selectedactegory>(selectedCategory);
    on<HomePageBanners>(homePageBanners);
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
