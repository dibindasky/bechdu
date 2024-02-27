part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required LoginModel loginModel}) = Login;
  const factory AuthEvent.logOut() = LogOut;
  const factory AuthEvent.logOrNot() = LogOrNot;
}
