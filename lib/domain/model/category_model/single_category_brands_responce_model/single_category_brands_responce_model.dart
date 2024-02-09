import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/brands.dart';
import 'package:json_annotation/json_annotation.dart';

part 'single_category_brands_responce_model.g.dart';

@JsonSerializable()
class SingleCategoryBrandsResponceModel {
  List<Brands>? brands;
  SingleCategoryBrandsResponceModel({this.brands});

  factory SingleCategoryBrandsResponceModel.fromJson(
      Map<String, dynamic> json) {
    return _$SingleCategoryBrandsResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SingleCategoryBrandsResponceModelToJson(this);
  }
}
