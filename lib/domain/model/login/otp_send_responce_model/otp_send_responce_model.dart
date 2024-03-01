import 'package:json_annotation/json_annotation.dart';

part 'otp_send_responce_model.g.dart';

@JsonSerializable()
class OtpSendResponceModel {
  String? message;

  OtpSendResponceModel({this.message});

  factory OtpSendResponceModel.fromJson(Map<String, dynamic> json) {
    return _$OtpSendResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpSendResponceModelToJson(this);
}
