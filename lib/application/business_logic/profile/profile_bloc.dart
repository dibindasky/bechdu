import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/address_model/address_creation_request_model/address_creation_request_model.dart';
import 'package:beachdu/domain/model/address_model/address_creation_responce_model/address_creation_responce_model.dart';
import 'package:beachdu/domain/model/profile/user_info/user_info.dart';
import 'package:beachdu/domain/repository/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepo profileRepo;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> addressList = [];
  TextEditingController addressController = TextEditingController();

  ProfileBloc(this.profileRepo) : super(ProfileState.initail()) {
    on<AddAddress>(addAddress);
    on<DeleteAddress>(deleteAddress);
    on<GetUserInfo>(getUserInfo);
  }

  FutureOr<void> getUserInfo(GetUserInfo event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await profileRepo.getUserInfo();
    data.fold((fail) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (succsessUserData) {
      //addressList = List.from(state.address);
      if (succsessUserData.user != null ||
          succsessUserData.user!.address != null) {
        addressList = succsessUserData.user!.address!;
      }
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        address: addressList,
        user: succsessUserData,
      ));
    });
  }

  FutureOr<void> addAddress(AddAddress event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final number = await SecureSotrage.getNumber();
    event.addressCreationRequestModel.phone = number;
    final data = await profileRepo.addAddress(
      addressCreationRequestModel: event.addressCreationRequestModel,
    );
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (succsess) {
      addressList = List.from(state.address);
      if (succsess.user!.address != null) {
        addressList = succsess.user!.address!;
      }
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        message: succsess.message,
        address: addressList,
        addressCreationResponceModel: succsess,
      ));
    });
  }

  FutureOr<void> deleteAddress(DeleteAddress event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await profileRepo.deleteAddress(
      index: event.index,
    );
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (succsess) {
      addressList.removeAt(event.index);
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        message: succsess.message,
        address: addressList,
      ));
    });
  }
}
