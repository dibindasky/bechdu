import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  String? mobileNumber;
  String? diviceId;
  String? deviceToken;
  String? deviceType;
  String? deviceId;

  LoginModel({this.mobileNumber});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return _$LoginModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
