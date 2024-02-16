// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetQuestionModel _$GetQuestionModelFromJson(Map<String, dynamic> json) =>
    GetQuestionModel(
      id: json['_id'] as String?,
      categoryType: json['category_type'] as String?,
      slug: json['slug'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$GetQuestionModelToJson(GetQuestionModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'category_type': instance.categoryType,
      'slug': instance.slug,
      'sections': instance.sections,
      '__v': instance.v,
    };
