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
  bool? status;

  Notifications(
      {this.type, this.title, this.body, this.id, this.timestamp, this.status});

  factory Notifications.fromJson(Map<String, dynamic> json) =>
      _$NotificationsFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationsToJson(this);

  Notifications copyWith({
    String? type,
    String? title,
    String? body,
    String? orderId,
    String? id,
    DateTime? timestamp,
    bool? status,
  }) {
    return Notifications(
      type: type ?? this.type,
      title: title ?? this.title,
      body: body ?? this.body,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      status: status ?? this.status,
    );
  }
}
