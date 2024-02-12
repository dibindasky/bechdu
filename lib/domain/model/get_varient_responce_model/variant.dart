import 'package:json_annotation/json_annotation.dart';

part 'variant.g.dart';

@JsonSerializable()
class Variant {
  String? name;

  Variant({this.name});

  factory Variant.fromJson(Map<String, dynamic> json) {
    return _$VariantFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VariantToJson(this);
}
