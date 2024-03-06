// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_product_search_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalProductSearchResponceModel _$GlobalProductSearchResponceModelFromJson(
        Map<String, dynamic> json) =>
    GlobalProductSearchResponceModel(
      totalRows: json['totalRows'] as int?,
      products: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GlobalProductSearchResponceModelToJson(
        GlobalProductSearchResponceModel instance) =>
    <String, dynamic>{
      'totalRows': instance.totalRows,
      'data': instance.products,
    };
