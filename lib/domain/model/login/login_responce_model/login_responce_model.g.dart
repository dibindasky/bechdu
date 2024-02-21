// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponceModel _$LoginResponceModelFromJson(Map<String, dynamic> json) =>
    LoginResponceModel(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$LoginResponceModelToJson(LoginResponceModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
