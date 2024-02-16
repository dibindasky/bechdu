import 'package:json_annotation/json_annotation.dart';

import 'selected_option.dart';

part 'picke_question_model.g.dart';

@JsonSerializable()
class PickeQuestionModel {
  String? categoryType;
  String? productSlug;
  List<SelectedOption>? selectedOptions;

  PickeQuestionModel({
    this.categoryType,
    this.productSlug,
    this.selectedOptions,
  });

  factory PickeQuestionModel.fromJson(Map<String, dynamic> json) {
    return _$PickeQuestionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PickeQuestionModelToJson(this);
}
