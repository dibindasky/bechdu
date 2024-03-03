import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? name;
  String? email;
  String? phone;
  String? addPhone;
  String? address;
  String? pincode;
  String? city;
  String? orderpincode;

  User({
    this.name,
    this.email,
    this.phone,
    this.addPhone,
    this.address,
    this.pincode,
    this.city,
    this.orderpincode,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
