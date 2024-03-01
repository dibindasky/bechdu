import 'package:freezed_annotation/freezed_annotation.dart';
part 'question.g.dart';

@JsonSerializable()
class Question {
  String? description;
  String? type;
  String? image;

  Question({
    this.description,
    this.type,
    this.image,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return _$QuestionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
