// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_models_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetModelsResponceModel _$GetModelsResponceModelFromJson(
        Map<String, dynamic> json) =>
    GetModelsResponceModel(
      models: (json['models'] as List<dynamic>?)
          ?.map((e) => Model.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetModelsResponceModelToJson(
        GetModelsResponceModel instance) =>
    <String, dynamic>{
      'models': instance.models,
    };
