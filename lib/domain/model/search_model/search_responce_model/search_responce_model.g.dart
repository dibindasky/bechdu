// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponceModel _$SearchResponceModelFromJson(Map<String, dynamic> json) =>
    SearchResponceModel(
      totalRows: json['totalRows'] as int?,
      product: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponceModelToJson(
        SearchResponceModel instance) =>
    <String, dynamic>{
      'totalRows': instance.totalRows,
      'data': instance.product,
    };
