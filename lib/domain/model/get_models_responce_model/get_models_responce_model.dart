import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'get_models_responce_model.g.dart';

@JsonSerializable()
class GetModelsResponceModel {
  List<Model>? models;

  GetModelsResponceModel({this.models});

  factory GetModelsResponceModel.fromJson(Map<String, dynamic> json) {
    return _$GetModelsResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetModelsResponceModelToJson(this);
}
