// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'your_area_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YourAreaModel _$$_YourAreaModelFromJson(Map<String, dynamic> json) =>
    _$_YourAreaModel(
      image: json['image'] as String?,
      name: json['name'] as String?,
      regularFee: (json['regularFee'] as num?)?.toDouble(),
      www: json['www'] as String?,
      description: json['description'] as String?,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_YourAreaModelToJson(_$_YourAreaModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'regularFee': instance.regularFee,
      'www': instance.www,
      'description': instance.description,
      'category': instance.category,
      'addresses': instance.addresses,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      street: json['street'] as String?,
      city: json['city'] as String?,
      code: json['code'] as String?,
      country: json['country'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      phones:
          (json['phones'] as List<dynamic>?)?.map((e) => e as String).toList(),
      email: json['email'] as String?,
      open: json['open'] == null
          ? null
          : Open.fromJson(json['open'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'code': instance.code,
      'country': instance.country,
      'lat': instance.lat,
      'lng': instance.lng,
      'phones': instance.phones,
      'email': instance.email,
      'open': instance.open,
    };

_$_Open _$$_OpenFromJson(Map<String, dynamic> json) => _$_Open(
      monday: json['monday'] as String?,
      tuesday: json['tuesday'] as String?,
      wednesday: json['wednesday'] as String?,
      thursday: json['thursday'] as String?,
      friday: json['friday'] as String?,
      saturday: json['saturday'] as String?,
      sunday: json['sunday'] as String?,
    );

Map<String, dynamic> _$$_OpenToJson(_$_Open instance) => <String, dynamic>{
      'monday': instance.monday,
      'tuesday': instance.tuesday,
      'wednesday': instance.wednesday,
      'thursday': instance.thursday,
      'friday': instance.friday,
      'saturday': instance.saturday,
      'sunday': instance.sunday,
    };
