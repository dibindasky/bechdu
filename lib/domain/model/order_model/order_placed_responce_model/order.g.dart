// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      orderId: json['orderId'] as String?,
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
      deviceInfo: json['deviceInfo'] == null
          ? null
          : DeviceInfo.fromJson(json['deviceInfo'] as Map<String, dynamic>),
      status: json['status'] as String?,
      cancellationReason: json['cancellationReason'] as String?,
      id: json['_id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'orderId': instance.orderId,
      'user': instance.user,
      'payment': instance.payment,
      'pickUpDetails': instance.pickUpDetails,
      'productDetails': instance.productDetails,
      'promo': instance.promo,
      'deviceInfo': instance.deviceInfo,
      'status': instance.status,
      'cancellationReason': instance.cancellationReason,
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
