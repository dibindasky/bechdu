import 'package:json_annotation/json_annotation.dart';

part 'delete_account_request_model.g.dart';

@JsonSerializable()
class DeleteAccountRequestModel {
  String? otp;
  String? phone;

  DeleteAccountRequestModel({this.otp, this.phone});

  factory DeleteAccountRequestModel.fromJson(Map<String, dynamic> json) {
    return _$DeleteAccountRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteAccountRequestModelToJson(this);
}
