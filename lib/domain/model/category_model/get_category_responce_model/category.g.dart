// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as String?,
      categoryType: json['category_type'] as String?,
      slug: json['slug'] as String?,
      sectionCount: json['sectionCount'] as int?,
      categoryImage: json['categoryImage'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'category_type': instance.categoryType,
      'slug': instance.slug,
      'sectionCount': instance.sectionCount,
      'categoryImage': instance.categoryImage,
    };
