import 'package:json_annotation/json_annotation.dart';

part 'promo_code_responce_model.g.dart';

@JsonSerializable()
class PromoCodeResponceModel {
  int? value;
  String? message;

  PromoCodeResponceModel({this.value, this.message});

  factory PromoCodeResponceModel.fromJson(Map<String, dynamic> json) {
    return _$PromoCodeResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromoCodeResponceModelToJson(this);
}
