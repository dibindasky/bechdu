// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abandend_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbandendOrderRequestModel _$AbandendOrderRequestModelFromJson(
        Map<String, dynamic> json) =>
    AbandendOrderRequestModel(
      abendendOrderUser: json['user'] == null
          ? null
          : AbendendOrderUser.fromJson(json['user'] as Map<String, dynamic>),
      productDetails: json['productDetails'] == null
          ? null
          : ProductDetails.fromJson(
              json['productDetails'] as Map<String, dynamic>),
      platform: json['platform'] as String? ?? 'mobile',
    );

Map<String, dynamic> _$AbandendOrderRequestModelToJson(
        AbandendOrderRequestModel instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'user': instance.abendendOrderUser,
      'productDetails': instance.productDetails,
    };
