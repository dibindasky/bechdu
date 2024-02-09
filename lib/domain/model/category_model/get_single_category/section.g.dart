// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      heading: json['heading'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      criteria: json['criteria'] as String?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'heading': instance.heading,
      'description': instance.description,
      'type': instance.type,
      'options': instance.options,
      'criteria': instance.criteria,
    };
