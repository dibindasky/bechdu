import 'package:json_annotation/json_annotation.dart';

part 'address_creation_request_model.g.dart';

@JsonSerializable()
class AddressCreationRequestModel {
  String? phone;
  String? address;

  AddressCreationRequestModel({this.phone, this.address});

  factory AddressCreationRequestModel.fromJson(Map<String, dynamic> json) {
    return _$AddressCreationRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressCreationRequestModelToJson(this);
}
