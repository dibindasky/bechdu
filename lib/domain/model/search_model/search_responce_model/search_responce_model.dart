import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_responce_model.g.dart';

@JsonSerializable()
class SearchResponceModel {
  int? totalRows;
  @JsonKey(name: 'data')
  List<Product>? product;

  SearchResponceModel({this.totalRows, this.product});

  factory SearchResponceModel.fromJson(Map<String, dynamic> json) {
    return _$SearchResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponceModelToJson(this);
}
