// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerifyRequestModel _$OtpVerifyRequestModelFromJson(
        Map<String, dynamic> json) =>
    OtpVerifyRequestModel(
      otp: json['otp'] as String?,
      phone: json['phone'] as String?,
    )..deviceToken = json['deviceToken'] as String?;

Map<String, dynamic> _$OtpVerifyRequestModelToJson(
        OtpVerifyRequestModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'phone': instance.phone,
      'deviceToken': instance.deviceToken,
    };
