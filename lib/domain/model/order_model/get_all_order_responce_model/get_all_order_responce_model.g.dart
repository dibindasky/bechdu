// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_order_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllOrderResponceModel _$GetAllOrderResponceModelFromJson(
        Map<String, dynamic> json) =>
    GetAllOrderResponceModel(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllOrderResponceModelToJson(
        GetAllOrderResponceModel instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
