// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationResponceModel _$NotificationResponceModelFromJson(
        Map<String, dynamic> json) =>
    NotificationResponceModel(
      notifications: (json['data'] as List<dynamic>?)
          ?.map((e) => Notifications.fromJson(e as Map<String, dynamic>))
          .toList(),
      length: json['length'] as int?,
    );

Map<String, dynamic> _$NotificationResponceModelToJson(
        NotificationResponceModel instance) =>
    <String, dynamic>{
      'data': instance.notifications,
      'length': instance.length,
    };
