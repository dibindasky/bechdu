// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_creation_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressCreationResponceModel _$AddressCreationResponceModelFromJson(
        Map<String, dynamic> json) =>
    AddressCreationResponceModel(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressCreationResponceModelToJson(
        AddressCreationResponceModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };
