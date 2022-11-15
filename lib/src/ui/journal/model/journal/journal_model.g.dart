// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JournalModel _$$_JournalModelFromJson(Map<String, dynamic> json) =>
    _$_JournalModel(
      Source.fromJson(json['source'] as Map<String, dynamic>),
      Source.fromJson(json['target'] as Map<String, dynamic>),
      type: json['type'] as String?,
      timpestamp: json['timpestamp'] as String,
      card: Card.fromJson(json['card'] as Map<String, dynamic>),
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_JournalModelToJson(_$_JournalModel instance) =>
    <String, dynamic>{
      'source': instance.source,
      'target': instance.target,
      'type': instance.type,
      'timpestamp': instance.timpestamp,
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
      json['name'] as String,
      json['avatar'] as String,
    );

Map<String, dynamic> _$$_SourceToJson(_$_Source instance) => <String, dynamic>{
      'name': instance.name,
      'avatar': instance.avatar,
    };
