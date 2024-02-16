import 'package:json_annotation/json_annotation.dart';

import 'question.dart';

part 'section.g.dart';

@JsonSerializable()
class Section {
  String? heading;
  String? description;
  String? type;
  List<Question>? options;
  String? criteria;

  Section({
    this.heading,
    this.description,
    this.type,
    this.options,
    this.criteria,
  });

  factory Section.fromJson(Map<String, dynamic> json) {
    return _$SectionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SectionToJson(this);
}
