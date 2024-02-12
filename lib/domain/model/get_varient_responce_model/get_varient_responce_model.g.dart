// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_varient_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetVarientResponceModel _$GetVarientResponceModelFromJson(
        Map<String, dynamic> json) =>
    GetVarientResponceModel(
      variant: (json['variant'] as List<dynamic>?)
          ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetVarientResponceModelToJson(
        GetVarientResponceModel instance) =>
    <String, dynamic>{
      'variant': instance.variant,
    };
