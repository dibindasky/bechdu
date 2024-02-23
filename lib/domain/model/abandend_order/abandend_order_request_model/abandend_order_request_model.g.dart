// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abandend_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbandendOrderRequestModel _$AbandendOrderRequestModelFromJson(
        Map<String, dynamic> json) =>
    AbandendOrderRequestModel(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      productDetails: json['productDetails'] == null
          ? null
          : ProductDetails.fromJson(
              json['productDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbandendOrderRequestModelToJson(
        AbandendOrderRequestModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'productDetails': instance.productDetails,
    };
