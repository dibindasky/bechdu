// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_tome_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateTomeResponceModel _$DateTomeResponceModelFromJson(
        Map<String, dynamic> json) =>
    DateTomeResponceModel(
      dates:
          (json['dates'] as List<dynamic>?)?.map((e) => e as String).toList(),
      timeSlot: (json['time_slot'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DateTomeResponceModelToJson(
        DateTomeResponceModel instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'time_slot': instance.timeSlot,
    };
