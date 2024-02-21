import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'login_responce_model.g.dart';

@JsonSerializable()
class LoginResponceModel {
  User? user;
  String? token;

  LoginResponceModel({this.user, this.token});

  factory LoginResponceModel.fromJson(Map<String, dynamic> json) {
    return _$LoginResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponceModelToJson(this);
}
