import 'package:json_annotation/json_annotation.dart';

part 'promo_code_request_model.g.dart';

@JsonSerializable()
class PromoCodeRequestModel {
  String? phone;
  String? enteredCode;

  PromoCodeRequestModel({this.phone, this.enteredCode});

  factory PromoCodeRequestModel.fromJson(Map<String, dynamic> json) {
    return _$PromoCodeRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromoCodeRequestModelToJson(this);
}
