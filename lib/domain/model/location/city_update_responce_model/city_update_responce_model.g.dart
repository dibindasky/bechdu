// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_update_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityUpdateResponceModel _$CityUpdateResponceModelFromJson(
        Map<String, dynamic> json) =>
    CityUpdateResponceModel(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityUpdateResponceModelToJson(
        CityUpdateResponceModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };
