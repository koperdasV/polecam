// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JournalModel _$$_JournalModelFromJson(Map<String, dynamic> json) =>
    _$_JournalModel(
      type: json['type'] as String,
      timpestamp: DateTime.parse(json['timpestamp'] as String),
      source: Source.fromJson(json['source'] as Map<String, dynamic>),
      target: Source.fromJson(json['target'] as Map<String, dynamic>),
      card: Card.fromJson(json['card'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_JournalModelToJson(_$_JournalModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'timpestamp': instance.timpestamp.toIso8601String(),
      'source': instance.source,
      'target': instance.target,
      'card': instance.card,
      'amount': instance.amount,
    };

_$_Card _$$_CardFromJson(Map<String, dynamic> json) => _$_Card(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CardToJson(_$_Card instance) => <String, dynamic>{
      'name': instance.name,
    };

_$_Source _$$_SourceFromJson(Map<String, dynamic> json) => _$_Source(
      name: json['name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$_SourceToJson(_$_Source instance) => <String, dynamic>{
      'name': instance.name,
      'avatar': instance.avatar,
    };
