import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/address_model/address_creation_request_model/address_creation_request_model.dart';
import 'package:beachdu/domain/model/address_model/address_creation_responce_model/address_creation_responce_model.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:beachdu/domain/model/profile/delete_account_responce_model/delete_account_responce_model.dart';
import 'package:beachdu/domain/model/profile/user_info/user_info.dart';
import 'package:beachdu/domain/model/profile/user_info_request_model/user_info_request_model.dart';
import 'package:beachdu/domain/repository/auth_repo.dart';
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
  final AuthRepo authRepo;
  bool isShowAddress = false;
  bool isVisible = false;
  String? name;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController profileNameController = TextEditingController();
  TextEditingController profileEmailController = TextEditingController();
  TextEditingController profileAddPhoneController = TextEditingController();
  List<String> addressList = [];
  TextEditingController addressController = TextEditingController();

  ProfileBloc(this.profileRepo, this.authRepo) : super(ProfileState.initail()) {
    on<AddAddress>(addAddress);
    on<DeleteAddress>(deleteAddress);
    on<SelecteAddress>(selecteAddress);
    on<GetUserInfo>(getUserInfo);
    on<UpdateUser>(updateuser);
    on<GetDeletionOtp>(getDeletionOtp);
    on<DeleteAccount>(deleteAccount);
    on<Clear>(clear);
  }

  FutureOr<void> selecteAddress(SelecteAddress event, emit) {
    emit(state.copyWith(selectedAddressIndex: event.selectedadress));
  }

  FutureOr<void> clear(Clear event, emit) {
    emit(ProfileState.initail());
  }

  FutureOr<void> getDeletionOtp(GetDeletionOtp event, emit) async {
    emit(state.copyWith(hasError: false, isLoading: false));
    final number = await SecureSotrage.getNumber();
    LoginModel loginModel = LoginModel(mobileNumber: number);
    final data = await authRepo.otpSend(loginModel: loginModel);
    data.fold(
      (l) => emit(state.copyWith(isLoading: false, hasError: true)),
      (r) => emit(
        state.copyWith(
            isLoading: false,
            hasError: false,
            message: 'OTP send successfully'),
      ),
    );
  }

  FutureOr<void> deleteAccount(DeleteAccount event, emit) async {
    emit(state.copyWith(
        hasError: false, deleteAccountLoading: true, address: state.address));
    final number = await SecureSotrage.getNumber();
    event.otpVerifyRequestModel.phone = number.replaceAll(' ', '');
    final data = await profileRepo.deletAcocunt(
      otpVerifyRequestModel: event.otpVerifyRequestModel,
    );
    data.fold(
        (failure) => emit(
              state.copyWith(
                hasError: true,
                deleteAccountLoading: false,
                message: failure.message,
              ),
            ), (deleteSuccess) async {
      emit(
        state.copyWith(
          deleteAccountLoading: false,
          hasError: false,
          accountDeleted: true,
          deleteAccountResponceModel: deleteSuccess,
        ),
      );
    });
  }

  FutureOr<void> updateuser(UpdateUser event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await profileRepo.updateUser(
      userInfoRequestModel: event.userInfoRequestModel,
    );
    data.fold((fail) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (succsessUserData) {
      log('updateuser bloc ${succsessUserData.user!.toJson()}');
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        address: addressList,
        user: succsessUserData,
      ));
    });
  }

  FutureOr<void> getUserInfo(GetUserInfo event, emit) async {
    if (state.user != null && event.isLoad == false) return;
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await profileRepo.getUserInfo();
    data.fold((fail) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }, (succsessUserData) {
      if (succsessUserData.user != null ||
          succsessUserData.user!.address != null) {
        addressList = succsessUserData.user!.address!;
        profileNameController.text = succsessUserData.user!.name ?? '';
        profileEmailController.text = succsessUserData.user!.email ?? '';
        profileAddPhoneController.text = succsessUserData.user!.addPhone ?? '';
        name = succsessUserData.user!.name;
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
    final login = await SecureSotrage.getlLogin();
    if (login) {
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
    } else {
      emit(state.copyWith(
        isLoading: false,
        hasError: false,
        address: [],
        addressCreationResponceModel: null,
      ));
    }
  }

  FutureOr<void> deleteAddress(DeleteAddress event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await profileRepo.deleteAddress(index: event.index);
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
