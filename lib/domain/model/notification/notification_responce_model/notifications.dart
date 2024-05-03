import 'package:json_annotation/json_annotation.dart';

part 'notifications.g.dart';

@JsonSerializable()
class Notifications {
  String? type;
  String? title;
  String? body;
  @JsonKey(name: '_id')
  String? id;
  DateTime? timestamp;

  Notifications({this.type, this.title, this.body, this.id, this.timestamp});

  factory Notifications.fromJson(Map<String, dynamic> json) =>
      _$NotificationsFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationsToJson(this);
}
