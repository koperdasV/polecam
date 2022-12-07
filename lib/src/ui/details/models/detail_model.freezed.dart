// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailModel _$DetailModelFromJson(Map<String, dynamic> json) {
  return _DetailModel.fromJson(json);
}

/// @nodoc
mixin _$DetailModel {
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get regularFee => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  List<Addresses>? get addresses => throw _privateConstructorUsedError;
  List<Recommendations>? get recommendations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailModelCopyWith<DetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailModelCopyWith<$Res> {
  factory $DetailModelCopyWith(
          DetailModel value, $Res Function(DetailModel) then) =
      _$DetailModelCopyWithImpl<$Res, DetailModel>;
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? name,
      double? regularFee,
      String? url,
      String? description,
      @JsonKey(name: 'address') List<Addresses>? addresses,
      List<Recommendations>? recommendations});
}

/// @nodoc
class _$DetailModelCopyWithImpl<$Res, $Val extends DetailModel>
    implements $DetailModelCopyWith<$Res> {
  _$DetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? regularFee = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? addresses = freezed,
    Object? recommendations = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      regularFee: freezed == regularFee
          ? _value.regularFee
          : regularFee // ignore: cast_nullable_to_non_nullable
              as double?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Addresses>?,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Recommendations>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailModelCopyWith<$Res>
    implements $DetailModelCopyWith<$Res> {
  factory _$$_DetailModelCopyWith(
          _$_DetailModel value, $Res Function(_$_DetailModel) then) =
      __$$_DetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? name,
      double? regularFee,
      String? url,
      String? description,
      @JsonKey(name: 'address') List<Addresses>? addresses,
      List<Recommendations>? recommendations});
}

/// @nodoc
class __$$_DetailModelCopyWithImpl<$Res>
    extends _$DetailModelCopyWithImpl<$Res, _$_DetailModel>
    implements _$$_DetailModelCopyWith<$Res> {
  __$$_DetailModelCopyWithImpl(
      _$_DetailModel _value, $Res Function(_$_DetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? regularFee = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? addresses = freezed,
    Object? recommendations = freezed,
  }) {
    return _then(_$_DetailModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      regularFee: freezed == regularFee
          ? _value.regularFee
          : regularFee // ignore: cast_nullable_to_non_nullable
              as double?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: freezed == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Addresses>?,
      recommendations: freezed == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Recommendations>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailModel implements _DetailModel {
  const _$_DetailModel(
      {this.id,
      this.image,
      this.name,
      this.regularFee,
      this.url,
      this.description,
      @JsonKey(name: 'address') final List<Addresses>? addresses,
      final List<Recommendations>? recommendations})
      : _addresses = addresses,
        _recommendations = recommendations;

  factory _$_DetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailModelFromJson(json);

  @override
  final String? id;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final double? regularFee;
  @override
  final String? url;
  @override
  final String? description;
  final List<Addresses>? _addresses;
  @override
  @JsonKey(name: 'address')
  List<Addresses>? get addresses {
    final value = _addresses;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Recommendations>? _recommendations;
  @override
  List<Recommendations>? get recommendations {
    final value = _recommendations;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailModel(id: $id, image: $image, name: $name, regularFee: $regularFee, url: $url, description: $description, addresses: $addresses, recommendations: $recommendations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.regularFee, regularFee) ||
                other.regularFee == regularFee) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      name,
      regularFee,
      url,
      description,
      const DeepCollectionEquality().hash(_addresses),
      const DeepCollectionEquality().hash(_recommendations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailModelCopyWith<_$_DetailModel> get copyWith =>
      __$$_DetailModelCopyWithImpl<_$_DetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailModelToJson(
      this,
    );
  }
}

abstract class _DetailModel implements DetailModel {
  const factory _DetailModel(
      {final String? id,
      final String? image,
      final String? name,
      final double? regularFee,
      final String? url,
      final String? description,
      @JsonKey(name: 'address') final List<Addresses>? addresses,
      final List<Recommendations>? recommendations}) = _$_DetailModel;

  factory _DetailModel.fromJson(Map<String, dynamic> json) =
      _$_DetailModel.fromJson;

  @override
  String? get id;
  @override
  String? get image;
  @override
  String? get name;
  @override
  double? get regularFee;
  @override
  String? get url;
  @override
  String? get description;
  @override
  @JsonKey(name: 'address')
  List<Addresses>? get addresses;
  @override
  List<Recommendations>? get recommendations;
  @override
  @JsonKey(ignore: true)
  _$$_DetailModelCopyWith<_$_DetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Addresses _$AddressesFromJson(Map<String, dynamic> json) {
  return _Addresses.fromJson(json);
}

/// @nodoc
mixin _$Addresses {
  String? get street => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;
  List<String>? get phones => throw _privateConstructorUsedError;
  Open? get open => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressesCopyWith<Addresses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressesCopyWith<$Res> {
  factory $AddressesCopyWith(Addresses value, $Res Function(Addresses) then) =
      _$AddressesCopyWithImpl<$Res, Addresses>;
  @useResult
  $Res call(
      {String? street,
      String? city,
      String? code,
      String? country,
      String? lat,
      String? lng,
      List<String>? phones,
      Open? open});

  $OpenCopyWith<$Res>? get open;
}

/// @nodoc
class _$AddressesCopyWithImpl<$Res, $Val extends Addresses>
    implements $AddressesCopyWith<$Res> {
  _$AddressesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? code = freezed,
    Object? country = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? phones = freezed,
    Object? open = freezed,
  }) {
    return _then(_value.copyWith(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      phones: freezed == phones
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as Open?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenCopyWith<$Res>? get open {
    if (_value.open == null) {
      return null;
    }

    return $OpenCopyWith<$Res>(_value.open!, (value) {
      return _then(_value.copyWith(open: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddressesCopyWith<$Res> implements $AddressesCopyWith<$Res> {
  factory _$$_AddressesCopyWith(
          _$_Addresses value, $Res Function(_$_Addresses) then) =
      __$$_AddressesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? street,
      String? city,
      String? code,
      String? country,
      String? lat,
      String? lng,
      List<String>? phones,
      Open? open});

  @override
  $OpenCopyWith<$Res>? get open;
}

/// @nodoc
class __$$_AddressesCopyWithImpl<$Res>
    extends _$AddressesCopyWithImpl<$Res, _$_Addresses>
    implements _$$_AddressesCopyWith<$Res> {
  __$$_AddressesCopyWithImpl(
      _$_Addresses _value, $Res Function(_$_Addresses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? code = freezed,
    Object? country = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? phones = freezed,
    Object? open = freezed,
  }) {
    return _then(_$_Addresses(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      phones: freezed == phones
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as Open?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Addresses implements _Addresses {
  const _$_Addresses(
      {this.street,
      this.city,
      this.code,
      this.country,
      this.lat,
      this.lng,
      final List<String>? phones,
      this.open})
      : _phones = phones;

  factory _$_Addresses.fromJson(Map<String, dynamic> json) =>
      _$$_AddressesFromJson(json);

  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? code;
  @override
  final String? country;
  @override
  final String? lat;
  @override
  final String? lng;
  final List<String>? _phones;
  @override
  List<String>? get phones {
    final value = _phones;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Open? open;

  @override
  String toString() {
    return 'Addresses(street: $street, city: $city, code: $code, country: $country, lat: $lat, lng: $lng, phones: $phones, open: $open)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Addresses &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            (identical(other.open, open) || other.open == open));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, street, city, code, country, lat,
      lng, const DeepCollectionEquality().hash(_phones), open);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressesCopyWith<_$_Addresses> get copyWith =>
      __$$_AddressesCopyWithImpl<_$_Addresses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressesToJson(
      this,
    );
  }
}

abstract class _Addresses implements Addresses {
  const factory _Addresses(
      {final String? street,
      final String? city,
      final String? code,
      final String? country,
      final String? lat,
      final String? lng,
      final List<String>? phones,
      final Open? open}) = _$_Addresses;

  factory _Addresses.fromJson(Map<String, dynamic> json) =
      _$_Addresses.fromJson;

  @override
  String? get street;
  @override
  String? get city;
  @override
  String? get code;
  @override
  String? get country;
  @override
  String? get lat;
  @override
  String? get lng;
  @override
  List<String>? get phones;
  @override
  Open? get open;
  @override
  @JsonKey(ignore: true)
  _$$_AddressesCopyWith<_$_Addresses> get copyWith =>
      throw _privateConstructorUsedError;
}

Open _$OpenFromJson(Map<String, dynamic> json) {
  return _Open.fromJson(json);
}

/// @nodoc
mixin _$Open {
  String? get monday => throw _privateConstructorUsedError;
  String? get tuesday => throw _privateConstructorUsedError;
  String? get wednesday => throw _privateConstructorUsedError;
  String? get thursday => throw _privateConstructorUsedError;
  String? get friday => throw _privateConstructorUsedError;
  String? get saturday => throw _privateConstructorUsedError;
  String? get sunday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenCopyWith<Open> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenCopyWith<$Res> {
  factory $OpenCopyWith(Open value, $Res Function(Open) then) =
      _$OpenCopyWithImpl<$Res, Open>;
  @useResult
  $Res call(
      {String? monday,
      String? tuesday,
      String? wednesday,
      String? thursday,
      String? friday,
      String? saturday,
      String? sunday});
}

/// @nodoc
class _$OpenCopyWithImpl<$Res, $Val extends Open>
    implements $OpenCopyWith<$Res> {
  _$OpenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = freezed,
    Object? tuesday = freezed,
    Object? wednesday = freezed,
    Object? thursday = freezed,
    Object? friday = freezed,
    Object? saturday = freezed,
    Object? sunday = freezed,
  }) {
    return _then(_value.copyWith(
      monday: freezed == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as String?,
      tuesday: freezed == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as String?,
      wednesday: freezed == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as String?,
      thursday: freezed == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as String?,
      friday: freezed == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as String?,
      saturday: freezed == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as String?,
      sunday: freezed == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenCopyWith<$Res> implements $OpenCopyWith<$Res> {
  factory _$$_OpenCopyWith(_$_Open value, $Res Function(_$_Open) then) =
      __$$_OpenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? monday,
      String? tuesday,
      String? wednesday,
      String? thursday,
      String? friday,
      String? saturday,
      String? sunday});
}

/// @nodoc
class __$$_OpenCopyWithImpl<$Res> extends _$OpenCopyWithImpl<$Res, _$_Open>
    implements _$$_OpenCopyWith<$Res> {
  __$$_OpenCopyWithImpl(_$_Open _value, $Res Function(_$_Open) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = freezed,
    Object? tuesday = freezed,
    Object? wednesday = freezed,
    Object? thursday = freezed,
    Object? friday = freezed,
    Object? saturday = freezed,
    Object? sunday = freezed,
  }) {
    return _then(_$_Open(
      monday: freezed == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as String?,
      tuesday: freezed == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as String?,
      wednesday: freezed == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as String?,
      thursday: freezed == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as String?,
      friday: freezed == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as String?,
      saturday: freezed == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as String?,
      sunday: freezed == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Open implements _Open {
  const _$_Open(
      {this.monday,
      this.tuesday,
      this.wednesday,
      this.thursday,
      this.friday,
      this.saturday,
      this.sunday});

  factory _$_Open.fromJson(Map<String, dynamic> json) => _$$_OpenFromJson(json);

  @override
  final String? monday;
  @override
  final String? tuesday;
  @override
  final String? wednesday;
  @override
  final String? thursday;
  @override
  final String? friday;
  @override
  final String? saturday;
  @override
  final String? sunday;

  @override
  String toString() {
    return 'Open(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Open &&
            (identical(other.monday, monday) || other.monday == monday) &&
            (identical(other.tuesday, tuesday) || other.tuesday == tuesday) &&
            (identical(other.wednesday, wednesday) ||
                other.wednesday == wednesday) &&
            (identical(other.thursday, thursday) ||
                other.thursday == thursday) &&
            (identical(other.friday, friday) || other.friday == friday) &&
            (identical(other.saturday, saturday) ||
                other.saturday == saturday) &&
            (identical(other.sunday, sunday) || other.sunday == sunday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, monday, tuesday, wednesday,
      thursday, friday, saturday, sunday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenCopyWith<_$_Open> get copyWith =>
      __$$_OpenCopyWithImpl<_$_Open>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenToJson(
      this,
    );
  }
}

abstract class _Open implements Open {
  const factory _Open(
      {final String? monday,
      final String? tuesday,
      final String? wednesday,
      final String? thursday,
      final String? friday,
      final String? saturday,
      final String? sunday}) = _$_Open;

  factory _Open.fromJson(Map<String, dynamic> json) = _$_Open.fromJson;

  @override
  String? get monday;
  @override
  String? get tuesday;
  @override
  String? get wednesday;
  @override
  String? get thursday;
  @override
  String? get friday;
  @override
  String? get saturday;
  @override
  String? get sunday;
  @override
  @JsonKey(ignore: true)
  _$$_OpenCopyWith<_$_Open> get copyWith => throw _privateConstructorUsedError;
}

Recommendations _$RecommendationsFromJson(Map<String, dynamic> json) {
  return _Recommendations.fromJson(json);
}

/// @nodoc
mixin _$Recommendations {
  String? get avatar => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get subtitleYou => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendationsCopyWith<Recommendations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationsCopyWith<$Res> {
  factory $RecommendationsCopyWith(
          Recommendations value, $Res Function(Recommendations) then) =
      _$RecommendationsCopyWithImpl<$Res, Recommendations>;
  @useResult
  $Res call(
      {String? avatar,
      String? name,
      String? surname,
      String? subtitleYou,
      String? subtitle,
      String? amount});
}

/// @nodoc
class _$RecommendationsCopyWithImpl<$Res, $Val extends Recommendations>
    implements $RecommendationsCopyWith<$Res> {
  _$RecommendationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? subtitleYou = freezed,
    Object? subtitle = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleYou: freezed == subtitleYou
          ? _value.subtitleYou
          : subtitleYou // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecommendationsCopyWith<$Res>
    implements $RecommendationsCopyWith<$Res> {
  factory _$$_RecommendationsCopyWith(
          _$_Recommendations value, $Res Function(_$_Recommendations) then) =
      __$$_RecommendationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? avatar,
      String? name,
      String? surname,
      String? subtitleYou,
      String? subtitle,
      String? amount});
}

/// @nodoc
class __$$_RecommendationsCopyWithImpl<$Res>
    extends _$RecommendationsCopyWithImpl<$Res, _$_Recommendations>
    implements _$$_RecommendationsCopyWith<$Res> {
  __$$_RecommendationsCopyWithImpl(
      _$_Recommendations _value, $Res Function(_$_Recommendations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? subtitleYou = freezed,
    Object? subtitle = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_Recommendations(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleYou: freezed == subtitleYou
          ? _value.subtitleYou
          : subtitleYou // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recommendations implements _Recommendations {
  const _$_Recommendations(
      {this.avatar,
      this.name,
      this.surname,
      this.subtitleYou,
      this.subtitle,
      this.amount});

  factory _$_Recommendations.fromJson(Map<String, dynamic> json) =>
      _$$_RecommendationsFromJson(json);

  @override
  final String? avatar;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? subtitleYou;
  @override
  final String? subtitle;
  @override
  final String? amount;

  @override
  String toString() {
    return 'Recommendations(avatar: $avatar, name: $name, surname: $surname, subtitleYou: $subtitleYou, subtitle: $subtitle, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recommendations &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.subtitleYou, subtitleYou) ||
                other.subtitleYou == subtitleYou) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, avatar, name, surname, subtitleYou, subtitle, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecommendationsCopyWith<_$_Recommendations> get copyWith =>
      __$$_RecommendationsCopyWithImpl<_$_Recommendations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecommendationsToJson(
      this,
    );
  }
}

abstract class _Recommendations implements Recommendations {
  const factory _Recommendations(
      {final String? avatar,
      final String? name,
      final String? surname,
      final String? subtitleYou,
      final String? subtitle,
      final String? amount}) = _$_Recommendations;

  factory _Recommendations.fromJson(Map<String, dynamic> json) =
      _$_Recommendations.fromJson;

  @override
  String? get avatar;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  String? get subtitleYou;
  @override
  String? get subtitle;
  @override
  String? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_RecommendationsCopyWith<_$_Recommendations> get copyWith =>
      throw _privateConstructorUsedError;
}
