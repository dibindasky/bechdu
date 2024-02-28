import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:beachdu/domain/model/login/login_responce_model/login_responce_model.dart';
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
  String phoneNumber = '';
  bool isPhoneNumberValid = false;
  AuthBloc(this.authRepo) : super(AuthState.initail()) {
    on<LogOrNot>(logOrNot);
    on<Login>(login);
    on<LogOut>(logOut);
  }

  FutureOr<void> logOrNot(LogOrNot event, emit) async {
    final logOrNot = await SecureSotrage.getlLogin();
    log('$logOrNot', name: 'Auth bloc');
    emit(state.copyWith(logOrNot: logOrNot));
  }

  FutureOr<void> login(Login event, emit) async {
    emit(state.copyWith(hasError: false, isLoading: true));
    final data = await authRepo.login(loginModel: event.loginModel);
    data.fold(
        (failure) => emit(
              state.copyWith(
                hasError: true,
                isLoading: false,
                logOrNot: false,
              ),
            ), (successLogin) async {
      emit(
        state.copyWith(
          isLoading: false,
          hasError: false,
          loginResponceModel: successLogin,
          logOrNot: true,
        ),
      );
      await SecureSotrage.saveNumber(
        phoneNumber: successLogin.user!.phone!,
      );
      await SecureSotrage.saveToken(
          tokenModel: TokenModel(
        accessToken: successLogin.token,
      ));
      await SecureSotrage.setLogin();
    });
  }

  FutureOr<void> logOut(LogOut event, emit) async {
    await SecureSotrage.clearLogin();

    emit(AuthState.initail());
  }
}
