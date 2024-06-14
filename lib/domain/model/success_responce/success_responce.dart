import 'package:json_annotation/json_annotation.dart';

part 'success_responce.g.dart';

@JsonSerializable()
class SuccessResponce {
  String? message;

  SuccessResponce({this.message});

  factory SuccessResponce.fromJson(Map<String, dynamic> json) {
    return _$SuccessResponceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SuccessResponceToJson(this);
}
