// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) {
  return _CategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesModel {
  String get name => throw _privateConstructorUsedError;
  String get places => throw _privateConstructorUsedError;
  @JsonKey(name: 'Icon')
  CategoriesIcon? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesModelCopyWith<CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesModelCopyWith<$Res> {
  factory $CategoriesModelCopyWith(
          CategoriesModel value, $Res Function(CategoriesModel) then) =
      _$CategoriesModelCopyWithImpl<$Res, CategoriesModel>;
  @useResult
  $Res call(
      {String name,
      String places,
      @JsonKey(name: 'Icon') CategoriesIcon? icon});

  $CategoriesIconCopyWith<$Res>? get icon;
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res, $Val extends CategoriesModel>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? places = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as CategoriesIcon?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoriesIconCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $CategoriesIconCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoriesModelCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$$_CategoriesModelCopyWith(
          _$_CategoriesModel value, $Res Function(_$_CategoriesModel) then) =
      __$$_CategoriesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String places,
      @JsonKey(name: 'Icon') CategoriesIcon? icon});

  @override
  $CategoriesIconCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$_CategoriesModelCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res, _$_CategoriesModel>
    implements _$$_CategoriesModelCopyWith<$Res> {
  __$$_CategoriesModelCopyWithImpl(
      _$_CategoriesModel _value, $Res Function(_$_CategoriesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? places = null,
    Object? icon = freezed,
  }) {
    return _then(_$_CategoriesModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as CategoriesIcon?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesModel implements _CategoriesModel {
  const _$_CategoriesModel(
      {required this.name,
      required this.places,
      @JsonKey(name: 'Icon') this.icon});

  factory _$_CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesModelFromJson(json);

  @override
  final String name;
  @override
  final String places;
  @override
  @JsonKey(name: 'Icon')
  final CategoriesIcon? icon;

  @override
  String toString() {
    return 'CategoriesModel(name: $name, places: $places, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.places, places) || other.places == places) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, places, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesModelCopyWith<_$_CategoriesModel> get copyWith =>
      __$$_CategoriesModelCopyWithImpl<_$_CategoriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesModelToJson(
      this,
    );
  }
}

abstract class _CategoriesModel implements CategoriesModel {
  const factory _CategoriesModel(
      {required final String name,
      required final String places,
      @JsonKey(name: 'Icon') final CategoriesIcon? icon}) = _$_CategoriesModel;

  factory _CategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_CategoriesModel.fromJson;

  @override
  String get name;
  @override
  String get places;
  @override
  @JsonKey(name: 'Icon')
  CategoriesIcon? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesModelCopyWith<_$_CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoriesIcon _$CategoriesIconFromJson(Map<String, dynamic> json) {
  return _CategoriesIcon.fromJson(json);
}

/// @nodoc
mixin _$CategoriesIcon {
  String? get ios => throw _privateConstructorUsedError;
  String? get android => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesIconCopyWith<CategoriesIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesIconCopyWith<$Res> {
  factory $CategoriesIconCopyWith(
          CategoriesIcon value, $Res Function(CategoriesIcon) then) =
      _$CategoriesIconCopyWithImpl<$Res, CategoriesIcon>;
  @useResult
  $Res call({String? ios, String? android});
}

/// @nodoc
class _$CategoriesIconCopyWithImpl<$Res, $Val extends CategoriesIcon>
    implements $CategoriesIconCopyWith<$Res> {
  _$CategoriesIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ios = freezed,
    Object? android = freezed,
  }) {
    return _then(_value.copyWith(
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as String?,
      android: freezed == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesIconCopyWith<$Res>
    implements $CategoriesIconCopyWith<$Res> {
  factory _$$_CategoriesIconCopyWith(
          _$_CategoriesIcon value, $Res Function(_$_CategoriesIcon) then) =
      __$$_CategoriesIconCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? ios, String? android});
}

/// @nodoc
class __$$_CategoriesIconCopyWithImpl<$Res>
    extends _$CategoriesIconCopyWithImpl<$Res, _$_CategoriesIcon>
    implements _$$_CategoriesIconCopyWith<$Res> {
  __$$_CategoriesIconCopyWithImpl(
      _$_CategoriesIcon _value, $Res Function(_$_CategoriesIcon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ios = freezed,
    Object? android = freezed,
  }) {
    return _then(_$_CategoriesIcon(
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as String?,
      android: freezed == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesIcon implements _CategoriesIcon {
  const _$_CategoriesIcon({this.ios, this.android});

  factory _$_CategoriesIcon.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesIconFromJson(json);

  @override
  final String? ios;
  @override
  final String? android;

  @override
  String toString() {
    return 'CategoriesIcon(ios: $ios, android: $android)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesIcon &&
            (identical(other.ios, ios) || other.ios == ios) &&
            (identical(other.android, android) || other.android == android));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ios, android);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesIconCopyWith<_$_CategoriesIcon> get copyWith =>
      __$$_CategoriesIconCopyWithImpl<_$_CategoriesIcon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesIconToJson(
      this,
    );
  }
}

abstract class _CategoriesIcon implements CategoriesIcon {
  const factory _CategoriesIcon({final String? ios, final String? android}) =
      _$_CategoriesIcon;

  factory _CategoriesIcon.fromJson(Map<String, dynamic> json) =
      _$_CategoriesIcon.fromJson;

  @override
  String? get ios;
  @override
  String? get android;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesIconCopyWith<_$_CategoriesIcon> get copyWith =>
      throw _privateConstructorUsedError;
}
