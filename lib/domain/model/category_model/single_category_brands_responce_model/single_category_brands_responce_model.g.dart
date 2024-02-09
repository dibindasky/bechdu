// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_category_brands_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleCategoryBrandsResponceModel _$SingleCategoryBrandsResponceModelFromJson(
        Map<String, dynamic> json) =>
    SingleCategoryBrandsResponceModel(
      brands: (json['brands'] as List<dynamic>?)
          ?.map((e) => Brands.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SingleCategoryBrandsResponceModelToJson(
        SingleCategoryBrandsResponceModel instance) =>
    <String, dynamic>{
      'brands': instance.brands,
    };
