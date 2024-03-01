// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerifyResponceModel _$OtpVerifyResponceModelFromJson(
        Map<String, dynamic> json) =>
    OtpVerifyResponceModel(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$OtpVerifyResponceModelToJson(
        OtpVerifyResponceModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
