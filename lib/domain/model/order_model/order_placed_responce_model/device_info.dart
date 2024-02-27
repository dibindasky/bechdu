import 'package:json_annotation/json_annotation.dart';

part 'device_info.g.dart';

@JsonSerializable()
class DeviceInfo {
  List<dynamic>? deviceImages;

  DeviceInfo({this.deviceImages});

  factory DeviceInfo.fromJson(Map<String, dynamic> json) {
    return _$DeviceInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeviceInfoToJson(this);
}
