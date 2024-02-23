import 'package:json_annotation/json_annotation.dart';

import 'option.dart';

part 'product_details.g.dart';

@JsonSerializable()
class ProductDetails {
  String? name;
  String? slug;
  List<Option>? options;
  String? price;

  ProductDetails({this.name, this.slug, this.options, this.price});

  factory ProductDetails.fromJson(Map<String, dynamic> json) {
    return _$ProductDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDetailsToJson(this);
}
