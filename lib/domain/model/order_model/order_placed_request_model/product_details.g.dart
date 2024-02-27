// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetails _$ProductDetailsFromJson(Map<String, dynamic> json) =>
    ProductDetails(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
      price: json['price'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => SelectedOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductDetailsToJson(ProductDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'price': instance.price,
      'options': instance.options,
    };
