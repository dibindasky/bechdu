// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_respoce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductsRespoceModel _$GetProductsRespoceModelFromJson(
        Map<String, dynamic> json) =>
    GetProductsRespoceModel(
      products: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetProductsRespoceModelToJson(
        GetProductsRespoceModel instance) =>
    <String, dynamic>{
      'data': instance.products,
    };
