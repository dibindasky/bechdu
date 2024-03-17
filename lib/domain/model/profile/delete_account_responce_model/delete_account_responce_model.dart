import 'package:json_annotation/json_annotation.dart';

part 'delete_account_responce_model.g.dart';

@JsonSerializable()
class DeleteAccountResponceModel {
  String? message;

  DeleteAccountResponceModel({this.message});

  factory DeleteAccountResponceModel.fromJson(Map<String, dynamic> json) {
    return _$DeleteAccountResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteAccountResponceModelToJson(this);
}
