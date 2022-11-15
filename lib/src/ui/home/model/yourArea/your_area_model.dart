// To parse this JSON data, do
//
//     final yourAreaModel = yourAreaModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'your_area_model.freezed.dart';
part 'your_area_model.g.dart';

List<YourAreaModel> yourAreaModelFromJson(String str) =>
    List<YourAreaModel>.from(
      json.decode(str).map(YourAreaModel.fromJson) as List<YourAreaModel>,
    );

String yourAreaModelToJson(List<YourAreaModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class YourAreaModel with _$YourAreaModel {
  const factory YourAreaModel({
    String? image,
    String? name,
    double? regularFee,
    String? www,
    String? description,
    List<String>? category,
    List<Address>? addresses,
  }) = _YourAreaModel;

  factory YourAreaModel.fromJson(Map<String, dynamic> json) =>
      _$YourAreaModelFromJson(json);
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
    List<String>? phones,
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
