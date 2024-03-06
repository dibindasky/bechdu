// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_param_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchParamModel _$SearchParamModelFromJson(Map<String, dynamic> json) =>
    SearchParamModel(
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      search: json['search'] as String?,
    );

Map<String, dynamic> _$SearchParamModelToJson(SearchParamModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'search': instance.search,
    };
