import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

List<FavoritesModel> recommendedModelFromJson(String str) =>
    List<FavoritesModel>.from(
      json.decode(str).map(FavoritesModel.fromJson) as List<FavoritesModel>,
    );

String recommendedModelToJson(List<FavoritesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class FavoritesModel with _$FavoritesModel {
  const factory FavoritesModel({
    String? id,
    String? image,
    String? name,
    double? regularFee,
    String? www,
    String? description,
    List<String>? category,
    List<Address>? address,
  }) = _FavoritesModel;

  factory FavoritesModel.fromJson(Map<String, dynamic> json) =>
      _$FavoritesModelFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    String? street,
    String? city,
    String? code,
    String? country,
    String? lat,
    String? lng,
    List<String>? phone,
    String? email,
    Open? open,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class Open with _$Open {
  const factory Open({
    String? monday,
    String? tuesday,
    String? wednesday,
    String? thursday,
    String? friday,
    String? saturday,
    String? sunday,
  }) = _Open;

  factory Open.fromJson(Map<String, dynamic> json) => _$OpenFromJson(json);
}
