import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: '_id')
  String? id;
  String? slug;
  String? productImage;
  int? basePrice;
  int? estimatedPrice;
  String? variant;
  String? model;
  String? brandName;
  String? seriesName;
  String? categoryType;
  @JsonKey(name: '__v')
  int? v;

  Product({
    this.id,
    this.slug,
    this.productImage,
    this.basePrice,
    this.estimatedPrice,
    this.variant,
    this.model,
    this.brandName,
    this.seriesName,
    this.categoryType,
    this.v,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
