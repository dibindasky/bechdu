import 'package:json_annotation/json_annotation.dart';

part 'selected_option.g.dart';

@JsonSerializable()
class SelectedOption {
  String? heading;
  String? description;
  bool? value;
  String? type;

  SelectedOption({this.heading, this.description, this.value, this.type});

  Map<String, dynamic> toJson() {
    return {
      'heading': heading,
      'description': description,
      'value': value,
      'type': type,
    };
  }

  factory SelectedOption.fromJson(Map<String, dynamic> json) {
    return _$SelectedOptionFromJson(json);
  }

  //Map<String, dynamic> toJson() => _$SelectedOptionToJson(this);
}
