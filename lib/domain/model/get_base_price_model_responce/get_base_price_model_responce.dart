import 'package:json_annotation/json_annotation.dart';

part 'get_base_price_model_responce.g.dart';

@JsonSerializable()
class GetBasePriceModelResponce {
  int? basePrice;

  GetBasePriceModelResponce({this.basePrice});

  factory GetBasePriceModelResponce.fromJson(Map<String, dynamic> json) {
    return _$GetBasePriceModelResponceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetBasePriceModelResponceToJson(this);
}
