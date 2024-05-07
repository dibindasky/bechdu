import 'package:json_annotation/json_annotation.dart';

part 'page_size_query_model.g.dart';

@JsonSerializable()
class PageSizeQueryModel {
  int? page;
  int? pageSize;

  PageSizeQueryModel({this.page, this.pageSize});

  factory PageSizeQueryModel.fromJson(Map<String, dynamic> json) {
    return _$PageSizeQueryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PageSizeQueryModelToJson(this);
}
