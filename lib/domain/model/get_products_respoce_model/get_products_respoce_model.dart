import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'get_products_respoce_model.g.dart';

@JsonSerializable()
class GetProductsRespoceModel {
  @JsonKey(name: 'data')
  List<Product>? products;

  GetProductsRespoceModel({this.products});

  factory GetProductsRespoceModel.fromJson(Map<String, dynamic> json) {
    return _$GetProductsRespoceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetProductsRespoceModelToJson(this);
}
