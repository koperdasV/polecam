// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesModel _$$_CategoriesModelFromJson(Map<String, dynamic> json) =>
    _$_CategoriesModel(
      name: json['name'] as String,
      places: json['places'] as String,
      icon: json['Icon'] == null
          ? null
          : CategoriesIcon.fromJson(json['Icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CategoriesModelToJson(_$_CategoriesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'places': instance.places,
      'Icon': instance.icon,
    };

_$_CategoriesIcon _$$_CategoriesIconFromJson(Map<String, dynamic> json) =>
    _$_CategoriesIcon(
      ios: json['ios'] as String?,
      android: json['android'] as String?,
    );

Map<String, dynamic> _$$_CategoriesIconToJson(_$_CategoriesIcon instance) =>
    <String, dynamic>{
      'ios': instance.ios,
      'android': instance.android,
    };
