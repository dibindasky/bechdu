// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceRequestModel _$InvoiceRequestModelFromJson(Map<String, dynamic> json) =>
    InvoiceRequestModel(
      base64String: json['orderID'] as String?,
    );

Map<String, dynamic> _$InvoiceRequestModelToJson(
        InvoiceRequestModel instance) =>
    <String, dynamic>{
      'orderID': instance.base64String,
    };
