import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_model.freezed.dart';
part 'recommended_model.g.dart';

List<RecommendedModel> recommendedModelFromJson(String str) =>
    List<RecommendedModel>.from(
        json.decode(str).map(RecommendedModel.fromJson) as List<RecommendedModel>,);

String recommendedModelToJson(List<RecommendedModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class RecommendedModel with _$RecommendedModel {
  const factory RecommendedModel({
    String? id,
    String? image,
    String? name,
    double? regularFee,
    String? www,
    String? description,
    List<String>? category,
    List<Address>? address,
  }) = _RecommendedModel;

  factory RecommendedModel.fromJson(Map<String, dynamic> json) =>
      _$RecommendedModelFromJson(json);
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
