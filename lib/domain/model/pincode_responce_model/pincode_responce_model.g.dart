// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pincode_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PincodeResponceModel _$PincodeResponceModelFromJson(
        Map<String, dynamic> json) =>
    PincodeResponceModel(
      id: json['_id'] as String?,
      stateName: json['stateName'] as String?,
      cityName: json['cityName'] as String?,
      pinCodes: (json['pinCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$PincodeResponceModelToJson(
        PincodeResponceModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'stateName': instance.stateName,
      'cityName': instance.cityName,
      'pinCodes': instance.pinCodes,
      '__v': instance.v,
    };
