import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'pincode_update_responce_model.g.dart';

@JsonSerializable()
class PincodeUpdateResponceModel {
  String? message;
  User? user;

  PincodeUpdateResponceModel({this.message, this.user});

  factory PincodeUpdateResponceModel.fromJson(Map<String, dynamic> json) {
    return _$PincodeUpdateResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PincodeUpdateResponceModelToJson(this);
}
