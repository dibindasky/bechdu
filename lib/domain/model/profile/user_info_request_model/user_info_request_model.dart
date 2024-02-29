import 'package:json_annotation/json_annotation.dart';

part 'user_info_request_model.g.dart';

@JsonSerializable()
class UserInfoRequestModel {
  String? name;
  String? email;
  String? addPhone;

  UserInfoRequestModel({this.name, this.email, this.addPhone});

  factory UserInfoRequestModel.fromJson(Map<String, dynamic> json) {
    return _$UserInfoRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserInfoRequestModelToJson(this);
}
