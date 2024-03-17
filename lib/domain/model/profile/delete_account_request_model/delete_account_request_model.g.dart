// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteAccountRequestModel _$DeleteAccountRequestModelFromJson(
        Map<String, dynamic> json) =>
    DeleteAccountRequestModel(
      otp: json['otp'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$DeleteAccountRequestModelToJson(
        DeleteAccountRequestModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'phone': instance.phone,
    };
