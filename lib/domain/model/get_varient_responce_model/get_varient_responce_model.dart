import 'package:json_annotation/json_annotation.dart';

import 'variant.dart';

part 'get_varient_responce_model.g.dart';

@JsonSerializable()
class GetVarientResponceModel {
  List<Variant>? variant;

  GetVarientResponceModel({this.variant});

  factory GetVarientResponceModel.fromJson(Map<String, dynamic> json) {
    return _$GetVarientResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetVarientResponceModelToJson(this);
}
