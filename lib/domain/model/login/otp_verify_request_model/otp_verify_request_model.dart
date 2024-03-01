import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_request_model.g.dart';

@JsonSerializable()
class OtpVerifyRequestModel {
  String? otp;
  String? phone;

  OtpVerifyRequestModel({this.otp, this.phone});

  factory OtpVerifyRequestModel.fromJson(Map<String, dynamic> json) {
    return _$OtpVerifyRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpVerifyRequestModelToJson(this);
}
