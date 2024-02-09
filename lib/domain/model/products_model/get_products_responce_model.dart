import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'get_products_responce_model.g.dart';

@JsonSerializable()
class GetProductsResponceModel {
  @JsonKey(name: 'data')
  List<Product>? product;

  GetProductsResponceModel({this.product});

  factory GetProductsResponceModel.fromJson(Map<String, dynamic> json) {
    return _$GetProductsResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetProductsResponceModelToJson(this);
}
