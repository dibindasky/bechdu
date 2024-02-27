import 'package:json_annotation/json_annotation.dart';

import 'device_info.dart';
import 'payment.dart';
import 'pick_up_details.dart';
import 'product_details.dart';
import 'promo.dart';
import 'user.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  String? orderId;
  User? user;
  Payment? payment;
  PickUpDetails? pickUpDetails;
  ProductDetails? productDetails;
  Promo? promo;
  DeviceInfo? deviceInfo;
  String? status;
  String? cancellationReason;
  @JsonKey(name: '_id')
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  Order({
    this.orderId,
    this.user,
    this.payment,
    this.pickUpDetails,
    this.productDetails,
    this.promo,
    this.deviceInfo,
    this.status,
    this.cancellationReason,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
