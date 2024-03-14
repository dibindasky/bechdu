part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.onBoardBool() = OnBoardBool;
  const factory AuthEvent.vistedOrNot() = VistedOrNot;
  const factory AuthEvent.otpSend({
    required LoginModel loginModel,
  }) = OtpSend;
  const factory AuthEvent.otpVeriying({
    required OtpVerifyRequestModel otpVerifyRequestModel,
  }) = OtpVeriying;
  const factory AuthEvent.logOut() = LogOut;
  const factory AuthEvent.logOrNot() = LogOrNot;
}
