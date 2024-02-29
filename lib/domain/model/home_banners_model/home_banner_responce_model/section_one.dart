import 'package:json_annotation/json_annotation.dart';

part 'section_one.g.dart';

@JsonSerializable()
class SectionOne {
  String? heading;
  String? image;
  String? mobileLink;
  String? webLink;
  String? buttonText;

  SectionOne({
    this.heading,
    this.image,
    this.mobileLink,
    this.webLink,
    this.buttonText,
  });

  factory SectionOne.fromJson(Map<String, dynamic> json) {
    return _$SectionOneFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SectionOneToJson(this);
}
