// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoRequestModel _$UserInfoRequestModelFromJson(
        Map<String, dynamic> json) =>
    UserInfoRequestModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      addPhone: json['addPhone'] as String?,
    );

Map<String, dynamic> _$UserInfoRequestModelToJson(
        UserInfoRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'addPhone': instance.addPhone,
    };
