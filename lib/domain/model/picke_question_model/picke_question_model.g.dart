// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picke_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickeQuestionModel _$PickeQuestionModelFromJson(Map<String, dynamic> json) =>
    PickeQuestionModel(
      categoryType: json['categoryType'] as String?,
      productSlug: json['productSlug'] as String?,
      selectedOptions: (json['selectedOptions'] as List<dynamic>?)
          ?.map((e) => SelectedOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PickeQuestionModelToJson(PickeQuestionModel instance) =>
    <String, dynamic>{
      'categoryType': instance.categoryType,
      'productSlug': instance.productSlug,
      'selectedOptions': instance.selectedOptions,
    };
