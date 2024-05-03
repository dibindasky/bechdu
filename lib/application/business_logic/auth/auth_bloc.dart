import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:beachdu/domain/model/login/otp_send_responce_model/otp_send_responce_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_responce_model/otp_verify_responce_model.dart';
import 'package:beachdu/domain/model/token_model/token_model.dart';
import 'package:beachdu/domain/repository/auth_repo.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  String phoneNumber = '';
  bool isPhoneNumberValid = false;
  AuthBloc(this.authRepo) : super(AuthState.initail()) {
    on<OnBoardBool>(onBoardBool);
    on<LogOrNot>(logOrNot);
    on<OtpSend>(otpSend);
    on<OtpVeriying>(otpVerifying);
    on<LogOut>(logOut);
  }

  FutureOr<void> onBoardBool(OnBoardBool event, emit) async {
    await SecureSotrage.setOnboardBool();
  }

  FutureOr<void> logOrNot(LogOrNot event, emit) async {
    final isVisted = await SecureSotrage.getOnboardBool();
    final logOrNot = await SecureSotrage.getlLogin();
    emit(state.copyWith(logOrNot: logOrNot, isVisited: isVisted));
  }

  FutureOr<void> otpSend(OtpSend event, emit) async {
    emit(state.copyWith(hasError: false, isLoading: true, load: true));

    final data = await authRepo.otpSend(loginModel: event.loginModel);
    data.fold(
        (failure) => emit(
              state.copyWith(
                hasError: true,
                isLoading: false,
                logOrNot: false,
                message: failure.message,
                load: false,
              ),
            ), (successOtpSend) async {
      emit(
        state.copyWith(
          isLoading: false,
          hasError: false,
          message: successOtpSend.message,
          otpSendResponceModel: successOtpSend,
        ),
      );
    });
  }

  FutureOr<void> otpVerifying(OtpVeriying event, emit) async {
    emit(state.copyWith(hasError: false, isLoading: true, load: false));
    event.otpVerifyRequestModel.deviceToken =
        await FirebaseMessaging.instance.getToken();
    final data = await authRepo.otpVerifying(
      otpVerifyRequestModel: event.otpVerifyRequestModel,
    );
    data.fold(
        (failure) => emit(
              state.copyWith(
                hasError: true,
                isLoading: false,
                message: failure.message,
              ),
            ), (successNumberVerifying) async {
      emit(
        state.copyWith(
          isLoading: false,
          hasError: false,
          message: 'OTP verifying success',
          otpVerifyResponceModel: successNumberVerifying,
          logOrNot: true,
          product: event.product,
        ),
      );
      await SecureSotrage.saveNumber(
        phoneNumber: successNumberVerifying.user!.phone!,
      );
      await SecureSotrage.saveToken(
          tokenModel: TokenModel(
        accessToken: successNumberVerifying.token,
      ));

      await SecureSotrage.setLogin();
    });
  }

  FutureOr<void> logOut(LogOut event, emit) async {
    emit(state.copyWith(logOrNot: false));
    phoneNumberController.clear();
    otpController.clear();
    await SecureSotrage.clearLogin();
    await SecureSotrage.setOnboardBool();
    emit(AuthState.initail());
    log('${state.logOrNot}', name: 'logOrNot');
  }
}
