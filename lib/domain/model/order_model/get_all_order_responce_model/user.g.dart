// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      addPhone: json['addPhone'] as String?,
      address: json['address'] as String?,
      pincode: json['pincode'] as String?,
      city: json['city'] as String?,
      orderpincode: json['orderpincode'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'addPhone': instance.addPhone,
      'address': instance.address,
      'pincode': instance.pincode,
      'city': instance.city,
      'orderpincode': instance.orderpincode,
    };
