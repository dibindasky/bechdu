import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:beachdu/domain/model/login/otp_send_responce_model/otp_send_responce_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_responce_model/otp_verify_responce_model.dart';
import 'package:beachdu/domain/model/token_model/token_model.dart';
import 'package:beachdu/domain/repository/auth_repo.dart';
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
    on<LogOrNot>(logOrNot);
    on<OtpSend>(otpSend);
    on<OtpVeriying>(otpVerifying);
    on<LogOut>(logOut);
  }

  FutureOr<void> logOrNot(LogOrNot event, emit) async {
    final logOrNot = await SecureSotrage.getlLogin();
    log('logOrNot bloc $logOrNot');
    emit(state.copyWith(logOrNot: logOrNot));
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
    await SecureSotrage.clearLogin();
    emit(AuthState.initail());
  }
}
