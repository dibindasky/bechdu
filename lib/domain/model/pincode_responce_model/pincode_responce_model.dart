import 'package:json_annotation/json_annotation.dart';

part 'pincode_responce_model.g.dart';

@JsonSerializable()
class PincodeResponceModel {
  @JsonKey(name: '_id')
  String? id;
  String? stateName;
  String? cityName;
  List<String>? pinCodes;
  @JsonKey(name: '__v')
  int? v;

  PincodeResponceModel({
    this.id,
    this.stateName,
    this.cityName,
    this.pinCodes,
    this.v,
  });

  factory PincodeResponceModel.fromJson(Map<String, dynamic> json) {
    return _$PincodeResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PincodeResponceModelToJson(this);
}
