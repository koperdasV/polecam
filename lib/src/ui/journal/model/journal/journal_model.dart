import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'journal_model.freezed.dart';
part 'journal_model.g.dart';

List<JournalModel> journalModelFromJson(String str) => List<JournalModel>.from(
      json.decode(str).map(JournalModel.fromJson) as List<JournalModel>,
    );

String journalModelToJson(List<JournalModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class JournalModel with _$JournalModel {
  const factory JournalModel(
    Source source,
    Source target, {
    required String? type,
    required String timpestamp,
    required Card card,
    required double? amount,
  }) = _JournalModel;

  factory JournalModel.fromJson(Map<String, dynamic> json) =>
      _$JournalModelFromJson(json);
}

@freezed
class Card with _$Card {
  const factory Card({
    required String name,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source(
    String name,
    String avatar,
  ) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
