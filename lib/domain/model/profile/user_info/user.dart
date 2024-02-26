import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  String? id;
  String? email;
  String? name;
  String? phone;
  String? addPhone;
  List<String>? address;
  String? promoStatus;
  List<String>? promoCodes;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  String? city;
  String? pincode;

  User({
    this.id,
    this.email,
    this.name,
    this.phone,
    this.addPhone,
    this.address,
    this.promoStatus,
    this.promoCodes,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.city,
    this.pincode,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
