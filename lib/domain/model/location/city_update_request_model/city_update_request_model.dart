import 'package:json_annotation/json_annotation.dart';

part 'city_update_request_model.g.dart';

@JsonSerializable()
class CityUpdateRequestModel {
  String? city;

  CityUpdateRequestModel({this.city});

  factory CityUpdateRequestModel.fromJson(Map<String, dynamic> json) {
    return _$CityUpdateRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CityUpdateRequestModelToJson(this);
}
