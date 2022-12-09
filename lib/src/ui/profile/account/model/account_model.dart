import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

AccountModel accountModelFromJson(String str) =>
    AccountModel.fromJson(json.decode(str) as Map<String, dynamic>);

String accountModelToJson(AccountModel data) => json.encode(data.toJson());

@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    String? firstName,
    String? lastName,
    String? avatar,
    String? email,
    String? phone,
    String? street,
    String? city,
    String? postCode,
    String? pesel,
    String? dateOfBirth,
    String? gender,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}
