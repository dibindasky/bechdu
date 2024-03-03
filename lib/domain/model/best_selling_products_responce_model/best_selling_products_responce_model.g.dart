// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_selling_products_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestSellingProductsResponceModel _$BestSellingProductsResponceModelFromJson(
        Map<String, dynamic> json) =>
    BestSellingProductsResponceModel(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BestSellingProductsResponceModelToJson(
        BestSellingProductsResponceModel instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
