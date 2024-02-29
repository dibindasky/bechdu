// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoResponceModel _$UserInfoResponceModelFromJson(
        Map<String, dynamic> json) =>
    UserInfoResponceModel(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserInfoResponceModelToJson(
        UserInfoResponceModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };
