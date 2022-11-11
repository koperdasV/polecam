import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_model.freezed.dart';
part 'detail_model.g.dart';

DetailModel detailsModelFromJson(String str) => DetailModel.fromJson(
      json.decode(str) as Map<String, dynamic>,
    );

String detailsModelToJson(DetailModel data) =>
    json.encode(data.toJson());

@freezed
class DetailModel with _$DetailModel {
  const factory DetailModel({
    required String image,
    required String name,
    required String regularFee,
    required String url,
    required String description,
    required List<Addresses> addresses,
  }) = _DetailModel;

  factory DetailModel.fromJson(Map<String, dynamic> json) =>
      _$DetailModelFromJson(json);
}

@freezed
class Addresses with _$Addresses {
  const factory Addresses({
    required String street,
    required String city,
    required String code,
    required String country,
    required String lat,
    required String lng,
    required List<String> phones,
    required Open open,
  }) = _Addresses;

  factory Addresses.fromJson(Map<String, dynamic> json) =>
      _$AddressesFromJson(json);
}

@freezed
class Open with _$Open {
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
