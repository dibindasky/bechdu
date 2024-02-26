import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'address_creation_responce_model.g.dart';

@JsonSerializable()
class AddressCreationResponceModel {
  String? message;
  User? user;

  AddressCreationResponceModel({this.message, this.user});

  factory AddressCreationResponceModel.fromJson(Map<String, dynamic> json) {
    return _$AddressCreationResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressCreationResponceModelToJson(this);
}
