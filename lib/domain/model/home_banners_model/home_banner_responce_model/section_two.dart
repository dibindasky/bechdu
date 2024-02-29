import 'package:json_annotation/json_annotation.dart';

part 'section_two.g.dart';

@JsonSerializable()
class SectionTwo {
  String? heading;
  String? image;
  String? mobileLink;
  String? webLink;
  String? buttonText;

  SectionTwo({
    this.heading,
    this.image,
    this.mobileLink,
    this.webLink,
    this.buttonText,
  });

  factory SectionTwo.fromJson(Map<String, dynamic> json) {
    return _$SectionTwoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SectionTwoToJson(this);
}
