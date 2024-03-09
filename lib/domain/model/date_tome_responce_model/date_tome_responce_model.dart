import 'package:json_annotation/json_annotation.dart';

part 'date_tome_responce_model.g.dart';

@JsonSerializable()
class DateTomeResponceModel {
  List<String>? dates;
  @JsonKey(name: 'time_slot')
  List<String>? timeSlot;

  DateTomeResponceModel({this.dates, this.timeSlot});

  factory DateTomeResponceModel.fromJson(Map<String, dynamic> json) {
    return _$DateTomeResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DateTomeResponceModelToJson(this);
}
