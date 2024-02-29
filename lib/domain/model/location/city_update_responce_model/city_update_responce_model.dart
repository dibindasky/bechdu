import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'city_update_responce_model.g.dart';

@JsonSerializable()
class CityUpdateResponceModel {
  String? message;
  User? user;

  CityUpdateResponceModel({this.message, this.user});

  factory CityUpdateResponceModel.fromJson(Map<String, dynamic> json) {
    return _$CityUpdateResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CityUpdateResponceModelToJson(this);
}
