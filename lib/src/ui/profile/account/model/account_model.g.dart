// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountModel _$$_AccountModelFromJson(Map<String, dynamic> json) =>
    _$_AccountModel(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      avatar: json['avatar'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      postCode: json['postCode'] as String?,
      pesel: json['pesel'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$$_AccountModelToJson(_$_AccountModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatar': instance.avatar,
      'email': instance.email,
      'phone': instance.phone,
      'street': instance.street,
      'city': instance.city,
      'postCode': instance.postCode,
      'pesel': instance.pesel,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
    };
