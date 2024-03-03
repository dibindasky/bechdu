import 'package:json_annotation/json_annotation.dart';

part 'order_cancelation_request_model.g.dart';

@JsonSerializable()
class OrderCancelationRequestModel {
  String? cancellationReason;
  String? phone;

  OrderCancelationRequestModel({this.cancellationReason, this.phone});

  factory OrderCancelationRequestModel.fromJson(Map<String, dynamic> json) {
    return _$OrderCancelationRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderCancelationRequestModelToJson(this);
}
