import 'package:json_annotation/json_annotation.dart';

import 'category.dart';

part 'get_category_responce_model.g.dart';

@JsonSerializable()
class GetCategoryResponceModel {
  int? totalRows;
  @JsonKey(name: 'data')
  List<Category>? category;

  GetCategoryResponceModel({this.totalRows, this.category});

  factory GetCategoryResponceModel.fromJson(Map<String, dynamic> json) {
    return _$GetCategoryResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCategoryResponceModelToJson(this);
}
