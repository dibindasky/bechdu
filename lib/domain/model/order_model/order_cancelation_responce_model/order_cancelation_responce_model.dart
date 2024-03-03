import 'package:json_annotation/json_annotation.dart';

part 'order_cancelation_responce_model.g.dart';

@JsonSerializable()
class OrderCancelationResponceModel {
  String? message;

  OrderCancelationResponceModel({this.message});

  factory OrderCancelationResponceModel.fromJson(Map<String, dynamic> json) {
    return _$OrderCancelationResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderCancelationResponceModelToJson(this);
}
