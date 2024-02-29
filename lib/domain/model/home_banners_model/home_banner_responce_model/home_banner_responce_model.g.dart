// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_banner_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeBannerResponceModel _$HomeBannerResponceModelFromJson(
        Map<String, dynamic> json) =>
    HomeBannerResponceModel(
      sectionOne: (json['sectionOne'] as List<dynamic>?)
          ?.map((e) => SectionOne.fromJson(e as Map<String, dynamic>))
          .toList(),
      sectionTwo: (json['sectionTwo'] as List<dynamic>?)
          ?.map((e) => SectionTwo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeBannerResponceModelToJson(
        HomeBannerResponceModel instance) =>
    <String, dynamic>{
      'sectionOne': instance.sectionOne,
      'sectionTwo': instance.sectionTwo,
    };
