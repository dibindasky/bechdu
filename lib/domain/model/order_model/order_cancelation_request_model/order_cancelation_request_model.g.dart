// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cancelation_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCancelationRequestModel _$OrderCancelationRequestModelFromJson(
        Map<String, dynamic> json) =>
    OrderCancelationRequestModel(
      cancellationReason: json['cancellationReason'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$OrderCancelationRequestModelToJson(
        OrderCancelationRequestModel instance) =>
    <String, dynamic>{
      'cancellationReason': instance.cancellationReason,
      'phone': instance.phone,
    };
