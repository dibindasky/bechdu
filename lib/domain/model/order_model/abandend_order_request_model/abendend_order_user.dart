import 'package:json_annotation/json_annotation.dart';

part 'abendend_order_user.g.dart';

@JsonSerializable()
class AbendendOrderUser {
  String? phone;
  String? city;
  String? pincode;

  AbendendOrderUser({this.phone, this.city, this.pincode});

  factory AbendendOrderUser.fromJson(Map<String, dynamic> json) =>
      _$AbendendOrderUserFromJson(json);

  Map<String, dynamic> toJson() => _$AbendendOrderUserToJson(this);
}
