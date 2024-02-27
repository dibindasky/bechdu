import 'package:json_annotation/json_annotation.dart';

import 'order.dart';

part 'order_placed_responce_model.g.dart';

@JsonSerializable()
class OrderPlacedResponceModel {
  String? message;
  Order? order;

  OrderPlacedResponceModel({this.message, this.order});

  factory OrderPlacedResponceModel.fromJson(Map<String, dynamic> json) {
    return _$OrderPlacedResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderPlacedResponceModelToJson(this);
}
