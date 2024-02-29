import 'package:json_annotation/json_annotation.dart';

import 'section_one.dart';
import 'section_two.dart';

part 'home_banner_responce_model.g.dart';

@JsonSerializable()
class HomeBannerResponceModel {
  List<SectionOne>? sectionOne;
  List<SectionTwo>? sectionTwo;

  HomeBannerResponceModel({this.sectionOne, this.sectionTwo});

  factory HomeBannerResponceModel.fromJson(Map<String, dynamic> json) {
    return _$HomeBannerResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeBannerResponceModelToJson(this);
}
