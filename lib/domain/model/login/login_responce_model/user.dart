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
  String? pincode;
  String? city;
  String? promoStatus;
  List<dynamic>? promoCodes;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  User({
    this.id,
    this.email,
    this.name,
    this.phone,
    this.addPhone,
    this.address,
    this.pincode,
    this.city,
    this.promoStatus,
    this.promoCodes,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
