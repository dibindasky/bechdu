// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      description: json['description'] as String?,
      type: json['type'] as String?,
      images: json['images'] as String?,
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'description': instance.description,
      'type': instance.type,
      'images': instance.images,
    };
