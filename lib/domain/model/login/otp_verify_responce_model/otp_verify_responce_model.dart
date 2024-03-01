import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'otp_verify_responce_model.g.dart';

@JsonSerializable()
class OtpVerifyResponceModel {
  User? user;
  String? token;

  OtpVerifyResponceModel({this.user, this.token});

  factory OtpVerifyResponceModel.fromJson(Map<String, dynamic> json) {
    return _$OtpVerifyResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpVerifyResponceModelToJson(this);
}
