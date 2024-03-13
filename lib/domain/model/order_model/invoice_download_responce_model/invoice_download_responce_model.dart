import 'package:json_annotation/json_annotation.dart';

part 'invoice_download_responce_model.g.dart';

@JsonSerializable()
class InvoiceDownloadResponceModel {
  String? name;

  InvoiceDownloadResponceModel({this.name});

  factory InvoiceDownloadResponceModel.fromJson(Map<String, dynamic> json) {
    return _$InvoiceDownloadResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceDownloadResponceModelToJson(this);
}
