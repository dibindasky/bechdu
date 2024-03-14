import 'package:json_annotation/json_annotation.dart';

import 'payment.dart';
import 'pick_up_details.dart';
import 'product_details.dart';
import 'promo.dart';
import 'user.dart';

part 'order_placed_request_model.g.dart';

@JsonSerializable()
class OrderPlacedRequestModel {
  String? platform;
  User? user;
  Payment? payment;
  PickUpDetails? pickUpDetails;
  ProductDetails? productDetails;
  Promo? promo;

  OrderPlacedRequestModel({
    this.platform = 'mobile',
    this.user,
    this.payment,
    this.pickUpDetails,
    this.productDetails,
    this.promo,
  });

  OrderPlacedRequestModel copyWith({
    String? platform,
    User? user,
    Payment? payment,
    PickUpDetails? pickUpDetails,
    ProductDetails? productDetails,
    Promo? promo,
  }) {
    return OrderPlacedRequestModel(
      platform: platform ?? this.platform,
      user: user ?? this.user,
      payment: payment ?? this.payment,
      pickUpDetails: pickUpDetails ?? this.pickUpDetails,
      productDetails: productDetails ?? this.productDetails,
      promo: promo ?? this.promo,
    );
  }

  factory OrderPlacedRequestModel.fromJson(Map<String, dynamic> json) {
    return _$OrderPlacedRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderPlacedRequestModelToJson(this);
}
