// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_placed_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderPlacedRequestModel _$OrderPlacedRequestModelFromJson(
        Map<String, dynamic> json) =>
    OrderPlacedRequestModel(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      pickUpDetails: json['pickUpDetails'] == null
          ? null
          : PickUpDetails.fromJson(
              json['pickUpDetails'] as Map<String, dynamic>),
      productDetails: json['productDetails'] == null
          ? null
          : ProductDetails.fromJson(
              json['productDetails'] as Map<String, dynamic>),
      promo: json['promo'] == null
          ? null
          : Promo.fromJson(json['promo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderPlacedRequestModelToJson(
        OrderPlacedRequestModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'payment': instance.payment,
      'pickUpDetails': instance.pickUpDetails,
      'productDetails': instance.productDetails,
      'promo': instance.promo,
    };
