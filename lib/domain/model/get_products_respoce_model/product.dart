import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: '_id')
  String? id;
  String? slug;
  String? productImage;
  num? basePrice;
  num? estimatedPrice;
  String? variant;
  String? model;
  String? brandName;
  String? seriesName;
  String? categoryType;

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
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
