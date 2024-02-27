// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      heading: json['heading'] as String?,
      description: json['description'] as String?,
      value: json['value'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'heading': instance.heading,
      'description': instance.description,
      'value': instance.value,
      'type': instance.type,
    };
