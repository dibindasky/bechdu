import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'user_info_responce_model.g.dart';

@JsonSerializable()
class UserInfoResponceModel {
  String? message;
  User? user;

  UserInfoResponceModel({this.message, this.user});

  factory UserInfoResponceModel.fromJson(Map<String, dynamic> json) {
    return _$UserInfoResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserInfoResponceModelToJson(this);
}
