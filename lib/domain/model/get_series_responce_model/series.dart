import 'package:json_annotation/json_annotation.dart';

part 'series.g.dart';

@JsonSerializable()
class Series {
  String? name;

  Series({this.name});

  factory Series.fromJson(Map<String, dynamic> json) {
    return _$SeriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SeriesToJson(this);
}
