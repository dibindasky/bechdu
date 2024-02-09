import 'package:json_annotation/json_annotation.dart';

part 'brands.g.dart';

@JsonSerializable()
class Brands {
  @JsonKey(name: '_id')
  String? id;
  String? brandName;
  String? brandImage;

  Brands({
    this.id,
    this.brandName,
    this.brandImage,
  });

  factory Brands.fromJson(Map<String, dynamic> json) {
    return _$BrandsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BrandsToJson(this);
  }
}
