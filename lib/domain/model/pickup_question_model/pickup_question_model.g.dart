// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickupQuestionModel _$PickupQuestionModelFromJson(Map<String, dynamic> json) =>
    PickupQuestionModel(
      categoryType: json['categoryType'] as String?,
      productSlug: json['productSlug'] as String?,
      selectedOptions: (json['selectedOptions'] as List<dynamic>?)
          ?.map((e) => SelectedOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PickupQuestionModelToJson(
        PickupQuestionModel instance) =>
    <String, dynamic>{
      'categoryType': instance.categoryType,
      'productSlug': instance.productSlug,
      'selectedOptions': instance.selectedOptions,
    };
