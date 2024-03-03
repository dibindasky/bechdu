import 'package:json_annotation/json_annotation.dart';

part 'partner.g.dart';

@JsonSerializable()
class Partner {
  String? partnerName;
  String? partnerPhone;
  String? pickUpPersonName;
  String? pickUpPersonPhone;

  Partner({
    this.partnerName,
    this.partnerPhone,
    this.pickUpPersonName,
    this.pickUpPersonPhone,
  });

  factory Partner.fromJson(Map<String, dynamic> json) {
    return _$PartnerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartnerToJson(this);
}
