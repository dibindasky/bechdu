// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectedOption _$SelectedOptionFromJson(Map<String, dynamic> json) =>
    SelectedOption(
      heading: json['heading'] as String?,
      description: json['description'] as String?,
      value: json['value'] as bool?,
      type: json['type'] as String?,
      selectioType: json['selectioType'] as String?,
    );

Map<String, dynamic> _$SelectedOptionToJson(SelectedOption instance) =>
    <String, dynamic>{
      'heading': instance.heading,
      'description': instance.description,
      'value': instance.value,
      'type': instance.type,
      'selectioType': instance.selectioType,
    };
