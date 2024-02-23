// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromoCodeRequestModel _$PromoCodeRequestModelFromJson(
        Map<String, dynamic> json) =>
    PromoCodeRequestModel(
      phone: json['phone'] as String?,
      enteredCode: json['enteredCode'] as String?,
    );

Map<String, dynamic> _$PromoCodeRequestModelToJson(
        PromoCodeRequestModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'enteredCode': instance.enteredCode,
    };
