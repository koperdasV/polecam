import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

List<FavoriteModel> recommendedModelFromJson(String str) =>
    List<FavoriteModel>.from(
      json.decode(str).map(FavoriteModel.fromJson) as List<FavoriteModel>,
    );

String recommendedModelToJson(List<FavoriteModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class FavoriteModel with _$FavoriteModel {
  const FavoriteModel._();
  const factory FavoriteModel({
    String? image,
    String? name,
    double? regularFee,
    String? www,
    String? description,
    List<String>? category,
    List<Address>? address,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
}

@freezed
abstract class Address with _$Address {
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
abstract class Open with _$Open {
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
