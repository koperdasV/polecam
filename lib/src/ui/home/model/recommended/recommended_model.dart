import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_model.freezed.dart';
part 'recommended_model.g.dart';

List<RecommendedModel> recommendedModelFromJson(String str) =>
    List<RecommendedModel>.from(
      json.decode(str).map(RecommendedModel.fromJson) as List<RecommendedModel>,
    );

String recommendedModelToJson(List<RecommendedModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class RecommendedModel with _$RecommendedModel {
  const factory RecommendedModel({
    required String id,
    required String image,
    required String name,
    required double regularFee,
    required String www,
    required String description,
    required List<String> category,
    required List<Address> address,
    required List<Recommendations> recommendations,
    @Default(false) bool visibleOnMap,
  }) = _RecommendedModel;

  factory RecommendedModel.fromJson(Map<String, dynamic> json) =>
      _$RecommendedModelFromJson(json);
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    required String street,
    required String city,
    required String code,
    required String country,
    required String lat,
    required String lng,
    required List<String> phones,
    required String email,
    required Open open,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
abstract class Open with _$Open {
  const factory Open({
    required String monday,
    required String tuesday,
    required String wednesday,
    required String thursday,
    required String friday,
    required String saturday,
    required String sunday,
  }) = _Open;

  factory Open.fromJson(Map<String, dynamic> json) => _$OpenFromJson(json);
}

@freezed
class Recommendations with _$Recommendations {
  const factory Recommendations({
   required String avatar,
   required String name,
   required String surname,
   required String? subtitleYou,
   required String subtitle,
   required String amount,
  }) = _Recommendations;

  factory Recommendations.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsFromJson(json);
}
