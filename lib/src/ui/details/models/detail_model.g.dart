// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailModel _$$_DetailModelFromJson(Map<String, dynamic> json) =>
    _$_DetailModel(
      id: json['id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      regularFee: (json['regularFee'] as num).toDouble(),
      www: json['www'] as String,
      description: json['description'] as String,
      address: (json['address'] as List<dynamic>)
          .map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
      category:
          (json['category'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_DetailModelToJson(_$_DetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'regularFee': instance.regularFee,
      'www': instance.www,
      'description': instance.description,
      'address': instance.address,
      'recommendations': instance.recommendations,
      'category': instance.category,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      street: json['street'] as String,
      city: json['city'] as String,
      code: json['code'] as String,
      country: json['country'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      phones:
          (json['phones'] as List<dynamic>).map((e) => e as String).toList(),
      open: Open.fromJson(json['open'] as Map<String, dynamic>),
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
      'open': instance.open,
    };

_$_Open _$$_OpenFromJson(Map<String, dynamic> json) => _$_Open(
      monday: json['monday'] as String,
      tuesday: json['tuesday'] as String,
      wednesday: json['wednesday'] as String,
      thursday: json['thursday'] as String,
      friday: json['friday'] as String,
      saturday: json['saturday'] as String,
      sunday: json['sunday'] as String,
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

_$_Recommendation _$$_RecommendationFromJson(Map<String, dynamic> json) =>
    _$_Recommendation(
      avatar: json['avatar'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      subtitleYou: json['subtitleYou'] as String?,
      subtitle: json['subtitle'] as String?,
      amount: json['amount'] as String?,
    );

Map<String, dynamic> _$$_RecommendationToJson(_$_Recommendation instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'name': instance.name,
      'surname': instance.surname,
      'subtitleYou': instance.subtitleYou,
      'subtitle': instance.subtitle,
      'amount': instance.amount,
    };
