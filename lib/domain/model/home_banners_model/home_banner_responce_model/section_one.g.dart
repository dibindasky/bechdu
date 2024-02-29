// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_one.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionOne _$SectionOneFromJson(Map<String, dynamic> json) => SectionOne(
      heading: json['heading'] as String?,
      image: json['image'] as String?,
      mobileLink: json['mobileLink'] as String?,
      webLink: json['webLink'] as String?,
      buttonText: json['buttonText'] as String?,
    );

Map<String, dynamic> _$SectionOneToJson(SectionOne instance) =>
    <String, dynamic>{
      'heading': instance.heading,
      'image': instance.image,
      'mobileLink': instance.mobileLink,
      'webLink': instance.webLink,
      'buttonText': instance.buttonText,
    };
