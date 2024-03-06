import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'global_product_search_responce_model.g.dart';

@JsonSerializable()
class GlobalProductSearchResponceModel {
  int? totalRows;
  @JsonKey(name: 'data')
  List<Product>? products;

  GlobalProductSearchResponceModel({this.totalRows, this.products});

  factory GlobalProductSearchResponceModel.fromJson(Map<String, dynamic> json) {
    return _$GlobalProductSearchResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GlobalProductSearchResponceModelToJson(this);
  }
}
