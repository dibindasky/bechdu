import 'package:freezed_annotation/freezed_annotation.dart';
part 'option.g.dart';

@JsonSerializable()
class Option {
  String? description;
  String? type;
  String? images;

  Option({
    this.description,
    this.type,
    this.images,
  });

  factory Option.fromJson(Map<String, dynamic> json) {
    return _$OptionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OptionToJson(this);
}
