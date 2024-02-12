// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_series_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSeriesResponceModel _$GetSeriesResponceModelFromJson(
        Map<String, dynamic> json) =>
    GetSeriesResponceModel(
      series: (json['series'] as List<dynamic>?)
          ?.map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSeriesResponceModelToJson(
        GetSeriesResponceModel instance) =>
    <String, dynamic>{
      'series': instance.series,
    };
