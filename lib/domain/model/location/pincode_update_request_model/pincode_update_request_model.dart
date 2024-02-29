import 'package:json_annotation/json_annotation.dart';

part 'pincode_update_request_model.g.dart';

@JsonSerializable()
class PincodeUpdateRequestModel {
  String? pincode;

  PincodeUpdateRequestModel({this.pincode});

  factory PincodeUpdateRequestModel.fromJson(Map<String, dynamic> json) {
    return _$PincodeUpdateRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PincodeUpdateRequestModelToJson(this);
}
