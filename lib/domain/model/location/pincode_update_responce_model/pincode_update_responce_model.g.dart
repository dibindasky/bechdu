// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pincode_update_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PincodeUpdateResponceModel _$PincodeUpdateResponceModelFromJson(
        Map<String, dynamic> json) =>
    PincodeUpdateResponceModel(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PincodeUpdateResponceModelToJson(
        PincodeUpdateResponceModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };
