import 'package:json_annotation/json_annotation.dart';

import 'section.dart';

part 'get_single_category_responce.g.dart';

@JsonSerializable()
class GetSingleCategoryResponce {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'category_type')
  String? categoryType;
  String? slug;
  List<Section>? sections;
  @JsonKey(name: '__v')
  int? v;

  GetSingleCategoryResponce({
    this.id,
    this.categoryType,
    this.slug,
    this.sections,
    this.v,
  });

  factory GetSingleCategoryResponce.fromJson(Map<String, dynamic> json) {
    return _$GetSingleCategoryResponceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetSingleCategoryResponceToJson(this);
}
