import 'package:json_annotation/json_annotation.dart';

import 'section.dart';

part 'get_question_model.g.dart';

@JsonSerializable()
class GetQuestionModel {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'category_type')
  String? categoryType;
  String? slug;
  List<Section>? sections;
  @JsonKey(name: '__v')
  int? v;

  GetQuestionModel({
    this.id,
    this.categoryType,
    this.slug,
    this.sections,
    this.v,
  });

  factory GetQuestionModel.fromJson(Map<String, dynamic> json) {
    return _$GetQuestionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetQuestionModelToJson(this);
}
