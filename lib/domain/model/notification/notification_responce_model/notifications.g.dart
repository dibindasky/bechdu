// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notifications _$NotificationsFromJson(Map<String, dynamic> json) =>
    Notifications(
      type: json['type'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      id: json['_id'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$NotificationsToJson(Notifications instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      '_id': instance.id,
      'timestamp': instance.timestamp?.toIso8601String(),
    };
