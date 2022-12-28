// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'journal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JournalModel _$JournalModelFromJson(Map<String, dynamic> json) {
  return _JournalModel.fromJson(json);
}

/// @nodoc
mixin _$JournalModel {
  Source get source => throw _privateConstructorUsedError;
  Source get target => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get timpestamp => throw _privateConstructorUsedError;
  Card get card => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JournalModelCopyWith<JournalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalModelCopyWith<$Res> {
  factory $JournalModelCopyWith(
          JournalModel value, $Res Function(JournalModel) then) =
      _$JournalModelCopyWithImpl<$Res>;
  $Res call(
      {Source source,
      Source target,
      String? type,
      String timpestamp,
      Card card,
      double? amount});

  $SourceCopyWith<$Res> get source;
  $SourceCopyWith<$Res> get target;
  $CardCopyWith<$Res> get card;
}

/// @nodoc
class _$JournalModelCopyWithImpl<$Res> implements $JournalModelCopyWith<$Res> {
  _$JournalModelCopyWithImpl(this._value, this._then);

  final JournalModel _value;
  // ignore: unused_field
  final $Res Function(JournalModel) _then;

  @override
  $Res call({
    Object? source = freezed,
    Object? target = freezed,
    Object? type = freezed,
    Object? timpestamp = freezed,
    Object? card = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as Source,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      timpestamp: timpestamp == freezed
          ? _value.timpestamp
          : timpestamp // ignore: cast_nullable_to_non_nullable
              as String,
      card: card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $SourceCopyWith<$Res> get source {
    return $SourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value));
    });
  }

  @override
  $SourceCopyWith<$Res> get target {
    return $SourceCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value));
    });
  }

  @override
  $CardCopyWith<$Res> get card {
    return $CardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value));
    });
  }
}

/// @nodoc
abstract class _$$_JournalModelCopyWith<$Res>
    implements $JournalModelCopyWith<$Res> {
  factory _$$_JournalModelCopyWith(
          _$_JournalModel value, $Res Function(_$_JournalModel) then) =
      __$$_JournalModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {Source source,
      Source target,
      String? type,
      String timpestamp,
      Card card,
      double? amount});

  @override
  $SourceCopyWith<$Res> get source;
  @override
  $SourceCopyWith<$Res> get target;
  @override
  $CardCopyWith<$Res> get card;
}

/// @nodoc
class __$$_JournalModelCopyWithImpl<$Res>
    extends _$JournalModelCopyWithImpl<$Res>
    implements _$$_JournalModelCopyWith<$Res> {
  __$$_JournalModelCopyWithImpl(
      _$_JournalModel _value, $Res Function(_$_JournalModel) _then)
      : super(_value, (v) => _then(v as _$_JournalModel));

  @override
  _$_JournalModel get _value => super._value as _$_JournalModel;

  @override
  $Res call({
    Object? source = freezed,
    Object? target = freezed,
    Object? type = freezed,
    Object? timpestamp = freezed,
    Object? card = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_JournalModel(
      source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
      target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as Source,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      timpestamp: timpestamp == freezed
          ? _value.timpestamp
          : timpestamp // ignore: cast_nullable_to_non_nullable
              as String,
      card: card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JournalModel implements _JournalModel {
  const _$_JournalModel(this.source, this.target,
      {required this.type,
      required this.timpestamp,
      required this.card,
      required this.amount});

  factory _$_JournalModel.fromJson(Map<String, dynamic> json) =>
      _$$_JournalModelFromJson(json);

  @override
  final Source source;
  @override
  final Source target;
  @override
  final String? type;
  @override
  final String timpestamp;
  @override
  final Card card;
  @override
  final double? amount;

  @override
  String toString() {
    return 'JournalModel(source: $source, target: $target, type: $type, timpestamp: $timpestamp, card: $card, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JournalModel &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.target, target) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.timpestamp, timpestamp) &&
            const DeepCollectionEquality().equals(other.card, card) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(target),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(timpestamp),
      const DeepCollectionEquality().hash(card),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$_JournalModelCopyWith<_$_JournalModel> get copyWith =>
      __$$_JournalModelCopyWithImpl<_$_JournalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JournalModelToJson(
      this,
    );
  }
}

abstract class _JournalModel implements JournalModel {
  const factory _JournalModel(final Source source, final Source target,
      {required final String? type,
      required final String timpestamp,
      required final Card card,
      required final double? amount}) = _$_JournalModel;

  factory _JournalModel.fromJson(Map<String, dynamic> json) =
      _$_JournalModel.fromJson;

  @override
  Source get source;
  @override
  Source get target;
  @override
  String? get type;
  @override
  String get timpestamp;
  @override
  Card get card;
  @override
  double? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_JournalModelCopyWith<_$_JournalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  final Card _value;
  // ignore: unused_field
  final $Res Function(Card) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$_CardCopyWith(_$_Card value, $Res Function(_$_Card) then) =
      __$$_CardCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$_CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$$_CardCopyWith<$Res> {
  __$$_CardCopyWithImpl(_$_Card _value, $Res Function(_$_Card) _then)
      : super(_value, (v) => _then(v as _$_Card));

  @override
  _$_Card get _value => super._value as _$_Card;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_Card(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Card implements _Card {
  const _$_Card({required this.name});

  factory _$_Card.fromJson(Map<String, dynamic> json) => _$$_CardFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Card(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Card &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CardCopyWith<_$_Card> get copyWith =>
      __$$_CardCopyWithImpl<_$_Card>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  const factory _Card({required final String name}) = _$_Card;

  factory _Card.fromJson(Map<String, dynamic> json) = _$_Card.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CardCopyWith<_$_Card> get copyWith => throw _privateConstructorUsedError;
}

Source _$SourceFromJson(Map<String, dynamic> json) {
  return _Source.fromJson(json);
}

/// @nodoc
mixin _$Source {
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceCopyWith<Source> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceCopyWith<$Res> {
  factory $SourceCopyWith(Source value, $Res Function(Source) then) =
      _$SourceCopyWithImpl<$Res>;
  $Res call({String name, String avatar});
}

/// @nodoc
class _$SourceCopyWithImpl<$Res> implements $SourceCopyWith<$Res> {
  _$SourceCopyWithImpl(this._value, this._then);

  final Source _value;
  // ignore: unused_field
  final $Res Function(Source) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SourceCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$_SourceCopyWith(_$_Source value, $Res Function(_$_Source) then) =
      __$$_SourceCopyWithImpl<$Res>;
  @override
  $Res call({String name, String avatar});
}

/// @nodoc
class __$$_SourceCopyWithImpl<$Res> extends _$SourceCopyWithImpl<$Res>
    implements _$$_SourceCopyWith<$Res> {
  __$$_SourceCopyWithImpl(_$_Source _value, $Res Function(_$_Source) _then)
      : super(_value, (v) => _then(v as _$_Source));

  @override
  _$_Source get _value => super._value as _$_Source;

  @override
  $Res call({
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_Source(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Source implements _Source {
  const _$_Source(this.name, this.avatar);

  factory _$_Source.fromJson(Map<String, dynamic> json) =>
      _$$_SourceFromJson(json);

  @override
  final String name;
  @override
  final String avatar;

  @override
  String toString() {
    return 'Source(name: $name, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Source &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$$_SourceCopyWith<_$_Source> get copyWith =>
      __$$_SourceCopyWithImpl<_$_Source>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourceToJson(
      this,
    );
  }
}

abstract class _Source implements Source {
  const factory _Source(final String name, final String avatar) = _$_Source;

  factory _Source.fromJson(Map<String, dynamic> json) = _$_Source.fromJson;

  @override
  String get name;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_SourceCopyWith<_$_Source> get copyWith =>
      throw _privateConstructorUsedError;
}
