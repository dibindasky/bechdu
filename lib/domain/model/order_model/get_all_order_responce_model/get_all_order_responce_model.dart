import 'package:json_annotation/json_annotation.dart';

import 'order.dart';

part 'get_all_order_responce_model.g.dart';

@JsonSerializable()
class GetAllOrderResponceModel {
  List<Order>? orders;

  GetAllOrderResponceModel({this.orders});

  factory GetAllOrderResponceModel.fromJson(Map<String, dynamic> json) {
    return _$GetAllOrderResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllOrderResponceModelToJson(this);
}
