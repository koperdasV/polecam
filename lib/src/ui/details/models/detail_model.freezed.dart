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
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get regularFee => throw _privateConstructorUsedError;
  String get www => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Address> get address => throw _privateConstructorUsedError;
  List<Recommendations> get recommendations =>
      throw _privateConstructorUsedError;
  List<String> get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailModelCopyWith<DetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailModelCopyWith<$Res> {
  factory $DetailModelCopyWith(
          DetailModel value, $Res Function(DetailModel) then) =
      _$DetailModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String image,
      String name,
      double regularFee,
      String www,
      String description,
      List<Address> address,
      List<Recommendations> recommendations,
      List<String> category});
}

/// @nodoc
class _$DetailModelCopyWithImpl<$Res> implements $DetailModelCopyWith<$Res> {
  _$DetailModelCopyWithImpl(this._value, this._then);

  final DetailModel _value;
  // ignore: unused_field
  final $Res Function(DetailModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? regularFee = freezed,
    Object? www = freezed,
    Object? description = freezed,
    Object? address = freezed,
    Object? recommendations = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      regularFee: regularFee == freezed
          ? _value.regularFee
          : regularFee // ignore: cast_nullable_to_non_nullable
              as double,
      www: www == freezed
          ? _value.www
          : www // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      recommendations: recommendations == freezed
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Recommendations>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_DetailModelCopyWith<$Res>
    implements $DetailModelCopyWith<$Res> {
  factory _$$_DetailModelCopyWith(
          _$_DetailModel value, $Res Function(_$_DetailModel) then) =
      __$$_DetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String image,
      String name,
      double regularFee,
      String www,
      String description,
      List<Address> address,
      List<Recommendations> recommendations,
      List<String> category});
}

/// @nodoc
class __$$_DetailModelCopyWithImpl<$Res> extends _$DetailModelCopyWithImpl<$Res>
    implements _$$_DetailModelCopyWith<$Res> {
  __$$_DetailModelCopyWithImpl(
      _$_DetailModel _value, $Res Function(_$_DetailModel) _then)
      : super(_value, (v) => _then(v as _$_DetailModel));

  @override
  _$_DetailModel get _value => super._value as _$_DetailModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? regularFee = freezed,
    Object? www = freezed,
    Object? description = freezed,
    Object? address = freezed,
    Object? recommendations = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_DetailModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      regularFee: regularFee == freezed
          ? _value.regularFee
          : regularFee // ignore: cast_nullable_to_non_nullable
              as double,
      www: www == freezed
          ? _value.www
          : www // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      recommendations: recommendations == freezed
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Recommendations>,
      category: category == freezed
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailModel implements _DetailModel {
  const _$_DetailModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.regularFee,
      required this.www,
      required this.description,
      required final List<Address> address,
      required final List<Recommendations> recommendations,
      required final List<String> category})
      : _address = address,
        _recommendations = recommendations,
        _category = category;

  factory _$_DetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailModelFromJson(json);

  @override
  final String id;
  @override
  final String image;
  @override
  final String name;
  @override
  final double regularFee;
  @override
  final String www;
  @override
  final String description;
  final List<Address> _address;
  @override
  List<Address> get address {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  final List<Recommendations> _recommendations;
  @override
  List<Recommendations> get recommendations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  final List<String> _category;
  @override
  List<String> get category {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'DetailModel(id: $id, image: $image, name: $name, regularFee: $regularFee, www: $www, description: $description, address: $address, recommendations: $recommendations, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.regularFee, regularFee) &&
            const DeepCollectionEquality().equals(other.www, www) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(regularFee),
      const DeepCollectionEquality().hash(www),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_address),
      const DeepCollectionEquality().hash(_recommendations),
      const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
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
      {required final String id,
      required final String image,
      required final String name,
      required final double regularFee,
      required final String www,
      required final String description,
      required final List<Address> address,
      required final List<Recommendations> recommendations,
      required final List<String> category}) = _$_DetailModel;

  factory _DetailModel.fromJson(Map<String, dynamic> json) =
      _$_DetailModel.fromJson;

  @override
  String get id;
  @override
  String get image;
  @override
  String get name;
  @override
  double get regularFee;
  @override
  String get www;
  @override
  String get description;
  @override
  List<Address> get address;
  @override
  List<Recommendations> get recommendations;
  @override
  List<String> get category;
  @override
  @JsonKey(ignore: true)
  _$$_DetailModelCopyWith<_$_DetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  List<String> get phones => throw _privateConstructorUsedError;
  Open get open => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {String street,
      String city,
      String code,
      String country,
      String lat,
      String lng,
      List<String> phones,
      Open open});

  $OpenCopyWith<$Res> get open;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

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
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      phones: phones == freezed
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as Open,
    ));
  }

  @override
  $OpenCopyWith<$Res> get open {
    return $OpenCopyWith<$Res>(_value.open, (value) {
      return _then(_value.copyWith(open: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String street,
      String city,
      String code,
      String country,
      String lat,
      String lng,
      List<String> phones,
      Open open});

  @override
  $OpenCopyWith<$Res> get open;
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, (v) => _then(v as _$_Address));

  @override
  _$_Address get _value => super._value as _$_Address;

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
    return _then(_$_Address(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      phones: phones == freezed
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as Open,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  const _$_Address(
      {required this.street,
      required this.city,
      required this.code,
      required this.country,
      required this.lat,
      required this.lng,
      required final List<String> phones,
      required this.open})
      : _phones = phones;

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  final String street;
  @override
  final String city;
  @override
  final String code;
  @override
  final String country;
  @override
  final String lat;
  @override
  final String lng;
  final List<String> _phones;
  @override
  List<String> get phones {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phones);
  }

  @override
  final Open open;

  @override
  String toString() {
    return 'Address(street: $street, city: $city, code: $code, country: $country, lat: $lat, lng: $lng, phones: $phones, open: $open)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            const DeepCollectionEquality().equals(other.open, open));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng),
      const DeepCollectionEquality().hash(_phones),
      const DeepCollectionEquality().hash(open));

  @JsonKey(ignore: true)
  @override
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {required final String street,
      required final String city,
      required final String code,
      required final String country,
      required final String lat,
      required final String lng,
      required final List<String> phones,
      required final Open open}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  String get street;
  @override
  String get city;
  @override
  String get code;
  @override
  String get country;
  @override
  String get lat;
  @override
  String get lng;
  @override
  List<String> get phones;
  @override
  Open get open;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

Open _$OpenFromJson(Map<String, dynamic> json) {
  return _Open.fromJson(json);
}

/// @nodoc
mixin _$Open {
  String get monday => throw _privateConstructorUsedError;
  String get tuesday => throw _privateConstructorUsedError;
  String get wednesday => throw _privateConstructorUsedError;
  String get thursday => throw _privateConstructorUsedError;
  String get friday => throw _privateConstructorUsedError;
  String get saturday => throw _privateConstructorUsedError;
  String get sunday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenCopyWith<Open> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenCopyWith<$Res> {
  factory $OpenCopyWith(Open value, $Res Function(Open) then) =
      _$OpenCopyWithImpl<$Res>;
  $Res call(
      {String monday,
      String tuesday,
      String wednesday,
      String thursday,
      String friday,
      String saturday,
      String sunday});
}

/// @nodoc
class _$OpenCopyWithImpl<$Res> implements $OpenCopyWith<$Res> {
  _$OpenCopyWithImpl(this._value, this._then);

  final Open _value;
  // ignore: unused_field
  final $Res Function(Open) _then;

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
      monday: monday == freezed
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as String,
      tuesday: tuesday == freezed
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as String,
      wednesday: wednesday == freezed
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as String,
      thursday: thursday == freezed
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as String,
      friday: friday == freezed
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as String,
      saturday: saturday == freezed
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as String,
      sunday: sunday == freezed
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenCopyWith<$Res> implements $OpenCopyWith<$Res> {
  factory _$$_OpenCopyWith(_$_Open value, $Res Function(_$_Open) then) =
      __$$_OpenCopyWithImpl<$Res>;
  @override
  $Res call(
      {String monday,
      String tuesday,
      String wednesday,
      String thursday,
      String friday,
      String saturday,
      String sunday});
}

/// @nodoc
class __$$_OpenCopyWithImpl<$Res> extends _$OpenCopyWithImpl<$Res>
    implements _$$_OpenCopyWith<$Res> {
  __$$_OpenCopyWithImpl(_$_Open _value, $Res Function(_$_Open) _then)
      : super(_value, (v) => _then(v as _$_Open));

  @override
  _$_Open get _value => super._value as _$_Open;

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
      monday: monday == freezed
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as String,
      tuesday: tuesday == freezed
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as String,
      wednesday: wednesday == freezed
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as String,
      thursday: thursday == freezed
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as String,
      friday: friday == freezed
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as String,
      saturday: saturday == freezed
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as String,
      sunday: sunday == freezed
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Open implements _Open {
  const _$_Open(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday,
      required this.saturday,
      required this.sunday});

  factory _$_Open.fromJson(Map<String, dynamic> json) => _$$_OpenFromJson(json);

  @override
  final String monday;
  @override
  final String tuesday;
  @override
  final String wednesday;
  @override
  final String thursday;
  @override
  final String friday;
  @override
  final String saturday;
  @override
  final String sunday;

  @override
  String toString() {
    return 'Open(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Open &&
            const DeepCollectionEquality().equals(other.monday, monday) &&
            const DeepCollectionEquality().equals(other.tuesday, tuesday) &&
            const DeepCollectionEquality().equals(other.wednesday, wednesday) &&
            const DeepCollectionEquality().equals(other.thursday, thursday) &&
            const DeepCollectionEquality().equals(other.friday, friday) &&
            const DeepCollectionEquality().equals(other.saturday, saturday) &&
            const DeepCollectionEquality().equals(other.sunday, sunday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(monday),
      const DeepCollectionEquality().hash(tuesday),
      const DeepCollectionEquality().hash(wednesday),
      const DeepCollectionEquality().hash(thursday),
      const DeepCollectionEquality().hash(friday),
      const DeepCollectionEquality().hash(saturday),
      const DeepCollectionEquality().hash(sunday));

  @JsonKey(ignore: true)
  @override
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
      {required final String monday,
      required final String tuesday,
      required final String wednesday,
      required final String thursday,
      required final String friday,
      required final String saturday,
      required final String sunday}) = _$_Open;

  factory _Open.fromJson(Map<String, dynamic> json) = _$_Open.fromJson;

  @override
  String get monday;
  @override
  String get tuesday;
  @override
  String get wednesday;
  @override
  String get thursday;
  @override
  String get friday;
  @override
  String get saturday;
  @override
  String get sunday;
  @override
  @JsonKey(ignore: true)
  _$$_OpenCopyWith<_$_Open> get copyWith => throw _privateConstructorUsedError;
}

Recommendations _$RecommendationsFromJson(Map<String, dynamic> json) {
  return _Recommendations.fromJson(json);
}

/// @nodoc
mixin _$Recommendations {
  String get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String? get subtitleYou => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendationsCopyWith<Recommendations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationsCopyWith<$Res> {
  factory $RecommendationsCopyWith(
          Recommendations value, $Res Function(Recommendations) then) =
      _$RecommendationsCopyWithImpl<$Res>;
  $Res call(
      {String avatar,
      String name,
      String surname,
      String? subtitleYou,
      String subtitle,
      String amount});
}

/// @nodoc
class _$RecommendationsCopyWithImpl<$Res>
    implements $RecommendationsCopyWith<$Res> {
  _$RecommendationsCopyWithImpl(this._value, this._then);

  final Recommendations _value;
  // ignore: unused_field
  final $Res Function(Recommendations) _then;

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
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      subtitleYou: subtitleYou == freezed
          ? _value.subtitleYou
          : subtitleYou // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RecommendationsCopyWith<$Res>
    implements $RecommendationsCopyWith<$Res> {
  factory _$$_RecommendationsCopyWith(
          _$_Recommendations value, $Res Function(_$_Recommendations) then) =
      __$$_RecommendationsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String avatar,
      String name,
      String surname,
      String? subtitleYou,
      String subtitle,
      String amount});
}

/// @nodoc
class __$$_RecommendationsCopyWithImpl<$Res>
    extends _$RecommendationsCopyWithImpl<$Res>
    implements _$$_RecommendationsCopyWith<$Res> {
  __$$_RecommendationsCopyWithImpl(
      _$_Recommendations _value, $Res Function(_$_Recommendations) _then)
      : super(_value, (v) => _then(v as _$_Recommendations));

  @override
  _$_Recommendations get _value => super._value as _$_Recommendations;

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
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      subtitleYou: subtitleYou == freezed
          ? _value.subtitleYou
          : subtitleYou // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recommendations implements _Recommendations {
  const _$_Recommendations(
      {required this.avatar,
      required this.name,
      required this.surname,
      required this.subtitleYou,
      required this.subtitle,
      required this.amount});

  factory _$_Recommendations.fromJson(Map<String, dynamic> json) =>
      _$$_RecommendationsFromJson(json);

  @override
  final String avatar;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String? subtitleYou;
  @override
  final String subtitle;
  @override
  final String amount;

  @override
  String toString() {
    return 'Recommendations(avatar: $avatar, name: $name, surname: $surname, subtitleYou: $subtitleYou, subtitle: $subtitle, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recommendations &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.surname, surname) &&
            const DeepCollectionEquality()
                .equals(other.subtitleYou, subtitleYou) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(surname),
      const DeepCollectionEquality().hash(subtitleYou),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
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
      {required final String avatar,
      required final String name,
      required final String surname,
      required final String? subtitleYou,
      required final String subtitle,
      required final String amount}) = _$_Recommendations;

  factory _Recommendations.fromJson(Map<String, dynamic> json) =
      _$_Recommendations.fromJson;

  @override
  String get avatar;
  @override
  String get name;
  @override
  String get surname;
  @override
  String? get subtitleYou;
  @override
  String get subtitle;
  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$_RecommendationsCopyWith<_$_Recommendations> get copyWith =>
      throw _privateConstructorUsedError;
}
