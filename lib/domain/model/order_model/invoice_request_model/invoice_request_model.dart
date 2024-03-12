import 'package:json_annotation/json_annotation.dart';

part 'invoice_request_model.g.dart';

@JsonSerializable()
class InvoiceRequestModel {
  @JsonKey(name: 'orderID')
  String? orderId;

  InvoiceRequestModel({this.orderId});

  factory InvoiceRequestModel.fromJson(Map<String, dynamic> json) {
    return _$InvoiceRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceRequestModelToJson(this);
}
