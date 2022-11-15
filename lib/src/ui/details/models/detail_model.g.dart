// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailModel _$$_DetailModelFromJson(Map<String, dynamic> json) =>
    _$_DetailModel(
      image: json['image'] as String?,
      name: json['name'] as String?,
      regularFee: (json['regularFee'] as num?)?.toDouble(),
      url: json['url'] as String?,
      description: json['description'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => Addresses.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => Recommendations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DetailModelToJson(_$_DetailModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'regularFee': instance.regularFee,
      'url': instance.url,
      'description': instance.description,
      'addresses': instance.addresses,
      'recommendations': instance.recommendations,
    };

_$_Addresses _$$_AddressesFromJson(Map<String, dynamic> json) => _$_Addresses(
      street: json['street'] as String?,
      city: json['city'] as String?,
      code: json['code'] as String?,
      country: json['country'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      phones:
          (json['phones'] as List<dynamic>?)?.map((e) => e as String).toList(),
      open: json['open'] == null
          ? null
          : Open.fromJson(json['open'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressesToJson(_$_Addresses instance) =>
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

_$_Recommendations _$$_RecommendationsFromJson(Map<String, dynamic> json) =>
    _$_Recommendations(
      avatar: json['avatar'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      subtitleYou: json['subtitleYou'] as String?,
      subtitle: json['subtitle'] as String?,
      amount: json['amount'] as String?,
    );

Map<String, dynamic> _$$_RecommendationsToJson(_$_Recommendations instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'name': instance.name,
      'surname': instance.surname,
      'subtitleYou': instance.subtitleYou,
      'subtitle': instance.subtitle,
      'amount': instance.amount,
    };
