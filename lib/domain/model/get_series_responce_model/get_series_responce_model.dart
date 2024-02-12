import 'package:json_annotation/json_annotation.dart';

import 'series.dart';

part 'get_series_responce_model.g.dart';

@JsonSerializable()
class GetSeriesResponceModel {
  List<Series>? series;

  GetSeriesResponceModel({this.series});

  factory GetSeriesResponceModel.fromJson(Map<String, dynamic> json) {
    return _$GetSeriesResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetSeriesResponceModelToJson(this);
}
