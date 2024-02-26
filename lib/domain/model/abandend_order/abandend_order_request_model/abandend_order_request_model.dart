import 'package:json_annotation/json_annotation.dart';

import 'product_details.dart';
import 'abendend_order_user.dart';

part 'abandend_order_request_model.g.dart';

@JsonSerializable()
class AbandendOrderRequestModel {
  @JsonKey(name: 'user')
  AbendendOrderUser? abendendOrderUser;
  ProductDetails? productDetails;

  AbandendOrderRequestModel({this.abendendOrderUser, this.productDetails});

  factory AbandendOrderRequestModel.fromJson(Map<String, dynamic> json) {
    return _$AbandendOrderRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AbandendOrderRequestModelToJson(this);
}
