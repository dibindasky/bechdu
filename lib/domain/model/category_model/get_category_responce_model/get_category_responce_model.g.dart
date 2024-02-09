// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCategoryResponceModel _$GetCategoryResponceModelFromJson(
        Map<String, dynamic> json) =>
    GetCategoryResponceModel(
      totalRows: json['totalRows'] as int?,
      category: (json['data'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCategoryResponceModelToJson(
        GetCategoryResponceModel instance) =>
    <String, dynamic>{
      'totalRows': instance.totalRows,
      'data': instance.category,
    };
