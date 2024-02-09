import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  String? id;
  @JsonKey(name: 'category_type')
  String? categoryType;
  String? slug;
  int? sectionCount;

  Category({this.id, this.categoryType, this.slug, this.sectionCount});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
