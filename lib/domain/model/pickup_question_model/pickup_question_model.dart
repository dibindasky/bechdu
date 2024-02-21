import 'package:json_annotation/json_annotation.dart';

import 'selected_option.dart';

part 'pickup_question_model.g.dart';

@JsonSerializable()
class PickupQuestionModel {
  String? categoryType;
  String? productSlug;
  List<SelectedOption>? selectedOptions;

  PickupQuestionModel({
    this.categoryType,
    this.productSlug,
    this.selectedOptions,
  });

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> selectedOptionsJson = [];
    selectedOptionsJson =
        selectedOptions!.map((option) => option.toJson()).toList();

    return {
      'categoryType': categoryType,
      'productSlug': productSlug,
      'selectedOptions': selectedOptionsJson,
    };
  }

  factory PickupQuestionModel.fromJson(Map<String, dynamic> json) {
    return _$PickupQuestionModelFromJson(json);
  }

  // Map<String, dynamic> toJson() => _$PickupQuestionModelToJson(this);
}
