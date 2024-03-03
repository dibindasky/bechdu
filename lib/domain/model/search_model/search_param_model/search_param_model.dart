import 'package:json_annotation/json_annotation.dart';

part 'search_param_model.g.dart';

@JsonSerializable()
class SearchParamModel {
  String? search;

  SearchParamModel({this.search});

  factory SearchParamModel.fromJson(Map<String, dynamic> json) {
    return _$SearchParamModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchParamModelToJson(this);
}
