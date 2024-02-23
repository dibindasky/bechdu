import 'package:json_annotation/json_annotation.dart';

import 'product_details.dart';
import 'user.dart';

part 'abandend_order_request_model.g.dart';

@JsonSerializable()
class AbandendOrderRequestModel {
  User? user;
  ProductDetails? productDetails;

  AbandendOrderRequestModel({this.user, this.productDetails});

  factory AbandendOrderRequestModel.fromJson(Map<String, dynamic> json) {
    return _$AbandendOrderRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AbandendOrderRequestModelToJson(this);
}
