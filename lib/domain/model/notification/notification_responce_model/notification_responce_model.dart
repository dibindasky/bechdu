import 'package:json_annotation/json_annotation.dart';

import 'notifications.dart';

part 'notification_responce_model.g.dart';

@JsonSerializable()
class NotificationResponceModel {
  @JsonKey(name: 'data')
  List<Notifications>? data;
  int? length;

  NotificationResponceModel({this.data, this.length});

  factory NotificationResponceModel.fromJson(Map<String, dynamic> json) {
    return _$NotificationResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NotificationResponceModelToJson(this);
}
