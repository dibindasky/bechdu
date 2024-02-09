// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductsResponceModel _$GetProductsResponceModelFromJson(
        Map<String, dynamic> json) =>
    GetProductsResponceModel(
      product: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetProductsResponceModelToJson(
        GetProductsResponceModel instance) =>
    <String, dynamic>{
      'data': instance.product,
    };
