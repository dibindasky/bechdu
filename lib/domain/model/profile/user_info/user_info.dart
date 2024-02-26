import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {
  User? user;

  UserInfo({this.user});

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return _$UserInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
