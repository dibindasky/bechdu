// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      mobileNumber: json['mobileNumber'] as String?,
    )
      ..diviceId = json['diviceId'] as String?
      ..deviceToken = json['deviceToken'] as String?
      ..deviceType = json['deviceType'] as String?
      ..deviceId = json['deviceId'] as String?;

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'mobileNumber': instance.mobileNumber,
      'diviceId': instance.diviceId,
      'deviceToken': instance.deviceToken,
      'deviceType': instance.deviceType,
      'deviceId': instance.deviceId,
    };
