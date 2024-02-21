// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['_id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      addPhone: json['addPhone'] as String?,
      address:
          (json['address'] as List<dynamic>?)?.map((e) => e as String).toList(),
      pincode: json['pincode'] as String?,
      city: json['city'] as String?,
      promoStatus: json['promoStatus'] as String?,
      promoCodes: json['promoCodes'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'addPhone': instance.addPhone,
      'address': instance.address,
      'pincode': instance.pincode,
      'city': instance.city,
      'promoStatus': instance.promoStatus,
      'promoCodes': instance.promoCodes,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
