// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_placed_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderPlacedResponceModel _$OrderPlacedResponceModelFromJson(
        Map<String, dynamic> json) =>
    OrderPlacedResponceModel(
      message: json['message'] as String?,
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderPlacedResponceModelToJson(
        OrderPlacedResponceModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'order': instance.order,
    };
