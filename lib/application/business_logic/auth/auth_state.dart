part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool hasError,
    required bool load,
    String? message,
    OtpSendResponceModel? otpSendResponceModel,
    OtpVerifyResponceModel? otpVerifyResponceModel,
    required bool logOrNot,
    String? number,
    Product? product,
    required bool isVisited,
  }) = _Initial;
  factory AuthState.initail() => const AuthState(
        isLoading: false,
        hasError: false,
        logOrNot: false,
        load: false,
        isVisited: false,
      );
}
