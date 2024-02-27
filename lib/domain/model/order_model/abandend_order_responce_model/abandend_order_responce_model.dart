import 'package:json_annotation/json_annotation.dart';

part 'abandend_order_responce_model.g.dart';

@JsonSerializable()
class AbandendOrderResponceModel {
  String? message;

  AbandendOrderResponceModel({this.message});

  factory AbandendOrderResponceModel.fromJson(Map<String, dynamic> json) {
    return _$AbandendOrderResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AbandendOrderResponceModelToJson(this);
}
