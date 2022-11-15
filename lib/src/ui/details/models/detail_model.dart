import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_model.freezed.dart';
part 'detail_model.g.dart';

DetailModel detailsModelFromJson(String str) =>
    DetailModel.fromJson(json.decode(str) as Map<String, dynamic>);

String? detailsModelToJson(DetailModel data) => json.encode(data.toJson());

@freezed
class DetailModel with _$DetailModel {
  const factory DetailModel({
    String? image,
    String? name,
    double? regularFee,
    String? url,
    String? description,
    List<Addresses>? addresses,
    List<Recommendations>? recommendations,
  }) = _DetailModel;

  factory DetailModel.fromJson(Map<String, dynamic> json) =>
      _$DetailModelFromJson(json);
}

@freezed
class Addresses with _$Addresses {
  const factory Addresses({
    String? street,
    String? city,
    String? code,
    String? country,
    String? lat,
    String? lng,
    List<String>? phones,
    Open? open,
  }) = _Addresses;

  factory Addresses.fromJson(Map<String, dynamic> json) =>
      _$AddressesFromJson(json);
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

@freezed
class Recommendations with _$Recommendations {
  const factory Recommendations({
    String? avatar,
    String? name,
    String? surname,
    String? subtitleYou,
    String? subtitle,
    String? amount,
  }) = _Recommendations;

  factory Recommendations.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsFromJson(json);
}
