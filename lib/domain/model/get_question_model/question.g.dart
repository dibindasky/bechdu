// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      description: json['description'] as String?,
      type: json['type'] as String?,
      images: json['images'] as String?,
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'description': instance.description,
      'type': instance.type,
      'images': instance.images,
    };
