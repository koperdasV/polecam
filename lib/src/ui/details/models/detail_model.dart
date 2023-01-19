import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_model.freezed.dart';
part 'detail_model.g.dart';


DetailModel detailsModelFromJson(String str) =>
    DetailModel.fromJson(json.decode(str) as Map<String, dynamic>);

String detailsModelToJson(DetailModel data) => json.encode(data.toJson());

@freezed
class DetailModel with _$DetailModel {
  const factory DetailModel({
   required String id,
   required String image,
   required String name,
   required double regularFee,
   required String www,
   required String description,
   required List<Address> address,
    required List<Recommendations> recommendations,
  required  List<String> category,
  }) = _DetailModel;

  factory DetailModel.fromJson(Map<String, dynamic> json) =>
      _$DetailModelFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
  required  String street,
  required  String city,
   required String code,
   required String country,
  required  String lat,
  required  String lng,
   required List<String> phones,
   required Open open,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
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
