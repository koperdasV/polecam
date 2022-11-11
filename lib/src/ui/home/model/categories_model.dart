import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

List<CategoriesModel> categorieModelFromJson(String str) =>
    List<CategoriesModel>.from(
      json.decode(str).map(CategoriesModel.fromJson) as List<CategoriesModel>,
    );

String categorieModelToJson(List<CategoriesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({
    required String name,
    required String places,
    @JsonKey(name: 'Icon') CategoriesIcon? icon,
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}

@freezed
class CategoriesIcon with _$CategoriesIcon {
  const factory CategoriesIcon({
    String? ios,
    String? android,
  }) = _CategoriesIcon;

  factory CategoriesIcon.fromJson(Map<String, dynamic> json) =>
      _$CategoriesIconFromJson(json);
}
