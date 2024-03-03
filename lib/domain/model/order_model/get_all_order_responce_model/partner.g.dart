// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Partner _$PartnerFromJson(Map<String, dynamic> json) => Partner(
      partnerName: json['partnerName'] as String?,
      partnerPhone: json['partnerPhone'] as String?,
      pickUpPersonName: json['pickUpPersonName'] as String?,
      pickUpPersonPhone: json['pickUpPersonPhone'] as String?,
    );

Map<String, dynamic> _$PartnerToJson(Partner instance) => <String, dynamic>{
      'partnerName': instance.partnerName,
      'partnerPhone': instance.partnerPhone,
      'pickUpPersonName': instance.pickUpPersonName,
      'pickUpPersonPhone': instance.pickUpPersonPhone,
    };
