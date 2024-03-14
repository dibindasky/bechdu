import 'package:json_annotation/json_annotation.dart';

part 'invoice_request_model.g.dart';

@JsonSerializable()
class InvoiceRequestModel {
  @JsonKey(name: 'orderID')
  String? base64String;

  InvoiceRequestModel({this.base64String});

  factory InvoiceRequestModel.fromJson(Map<String, dynamic> json) {
    return _$InvoiceRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceRequestModelToJson(this);
}
