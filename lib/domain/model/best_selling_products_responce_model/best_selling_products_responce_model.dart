import 'package:beachdu/domain/model/get_products_respoce_model/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'best_selling_products_responce_model.g.dart';

@JsonSerializable()
class BestSellingProductsResponceModel {
  List<Product>? products;

  BestSellingProductsResponceModel({this.products});

  factory BestSellingProductsResponceModel.fromJson(Map<String, dynamic> json) {
    return _$BestSellingProductsResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BestSellingProductsResponceModelToJson(this);
  }
}
