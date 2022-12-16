// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recommended_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecommendedModel _$RecommendedModelFromJson(Map<String, dynamic> json) {
  return _RecommendedModel.fromJson(json);
}

/// @nodoc
mixin _$RecommendedModel {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get regularFee => throw _privateConstructorUsedError;
  String get www => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get category => throw _privateConstructorUsedError;
  List<Address> get address => throw _privateConstructorUsedError;
  bool get visibleOnMap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendedModelCopyWith<RecommendedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedModelCopyWith<$Res> {
  factory $RecommendedModelCopyWith(
          RecommendedModel value, $Res Function(RecommendedModel) then) =
      _$RecommendedModelCopyWithImpl<$Res, RecommendedModel>;
  @useResult
  $Res call(
      {String id,
      String image,
      String name,
      double regularFee,
      String www,
      String description,
      List<String> category,
      List<Address> address,
      bool visibleOnMap});
}

/// @nodoc
class _$RecommendedModelCopyWithImpl<$Res, $Val extends RecommendedModel>
    implements $RecommendedModelCopyWith<$Res> {
  _$RecommendedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? regularFee = null,
    Object? www = null,
    Object? description = null,
    Object? category = null,
    Object? address = null,
    Object? visibleOnMap = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      regularFee: null == regularFee
          ? _value.regularFee
          : regularFee // ignore: cast_nullable_to_non_nullable
              as double,
      www: null == www
          ? _value.www
          : www // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      visibleOnMap: null == visibleOnMap
          ? _value.visibleOnMap
          : visibleOnMap // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecommendedModelCopyWith<$Res>
    implements $RecommendedModelCopyWith<$Res> {
  factory _$$_RecommendedModelCopyWith(
          _$_RecommendedModel value, $Res Function(_$_RecommendedModel) then) =
      __$$_RecommendedModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String image,
      String name,
      double regularFee,
      String www,
      String description,
      List<String> category,
      List<Address> address,
      bool visibleOnMap});
}

/// @nodoc
class __$$_RecommendedModelCopyWithImpl<$Res>
    extends _$RecommendedModelCopyWithImpl<$Res, _$_RecommendedModel>
    implements _$$_RecommendedModelCopyWith<$Res> {
  __$$_RecommendedModelCopyWithImpl(
      _$_RecommendedModel _value, $Res Function(_$_RecommendedModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? regularFee = null,
    Object? www = null,
    Object? description = null,
    Object? category = null,
    Object? address = null,
    Object? visibleOnMap = null,
  }) {
    return _then(_$_RecommendedModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      regularFee: null == regularFee
          ? _value.regularFee
          : regularFee // ignore: cast_nullable_to_non_nullable
              as double,
      www: null == www
          ? _value.www
          : www // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      visibleOnMap: null == visibleOnMap
          ? _value.visibleOnMap
          : visibleOnMap // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecommendedModel implements _RecommendedModel {
  const _$_RecommendedModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.regularFee,
      required this.www,
      required this.description,
      required final List<String> category,
      required final List<Address> address,
      this.visibleOnMap = false})
      : _category = category,
        _address = address;

  factory _$_RecommendedModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecommendedModelFromJson(json);

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
  final List<String> _category;
  @override
  List<String> get category {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  final List<Address> _address;
  @override
  List<Address> get address {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  @override
  @JsonKey()
  final bool visibleOnMap;

  @override
  String toString() {
    return 'RecommendedModel(id: $id, image: $image, name: $name, regularFee: $regularFee, www: $www, description: $description, category: $category, address: $address, visibleOnMap: $visibleOnMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecommendedModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.regularFee, regularFee) ||
                other.regularFee == regularFee) &&
            (identical(other.www, www) || other.www == www) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.visibleOnMap, visibleOnMap) ||
                other.visibleOnMap == visibleOnMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      name,
      regularFee,
      www,
      description,
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(_address),
      visibleOnMap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecommendedModelCopyWith<_$_RecommendedModel> get copyWith =>
      __$$_RecommendedModelCopyWithImpl<_$_RecommendedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecommendedModelToJson(
      this,
    );
  }
}

abstract class _RecommendedModel implements RecommendedModel {
  const factory _RecommendedModel(
      {required final String id,
      required final String image,
      required final String name,
      required final double regularFee,
      required final String www,
      required final String description,
      required final List<String> category,
      required final List<Address> address,
      final bool visibleOnMap}) = _$_RecommendedModel;

  factory _RecommendedModel.fromJson(Map<String, dynamic> json) =
      _$_RecommendedModel.fromJson;

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
  List<String> get category;
  @override
  List<Address> get address;
  @override
  bool get visibleOnMap;
  @override
  @JsonKey(ignore: true)
  _$$_RecommendedModelCopyWith<_$_RecommendedModel> get copyWith =>
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
  String get email => throw _privateConstructorUsedError;
  Open get open => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String street,
      String city,
      String code,
      String country,
      String lat,
      String lng,
      List<String> phones,
      String email,
      Open open});

  $OpenCopyWith<$Res> get open;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? code = null,
    Object? country = null,
    Object? lat = null,
    Object? lng = null,
    Object? phones = null,
    Object? email = null,
    Object? open = null,
  }) {
    return _then(_value.copyWith(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      phones: null == phones
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as Open,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenCopyWith<$Res> get open {
    return $OpenCopyWith<$Res>(_value.open, (value) {
      return _then(_value.copyWith(open: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String street,
      String city,
      String code,
      String country,
      String lat,
      String lng,
      List<String> phones,
      String email,
      Open open});

  @override
  $OpenCopyWith<$Res> get open;
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? code = null,
    Object? country = null,
    Object? lat = null,
    Object? lng = null,
    Object? phones = null,
    Object? email = null,
    Object? open = null,
  }) {
    return _then(_$_Address(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      phones: null == phones
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      open: null == open
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
      required this.email,
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
  final String email;
  @override
  final Open open;

  @override
  String toString() {
    return 'Address(street: $street, city: $city, code: $code, country: $country, lat: $lat, lng: $lng, phones: $phones, email: $email, open: $open)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.open, open) || other.open == open));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, street, city, code, country, lat,
      lng, const DeepCollectionEquality().hash(_phones), email, open);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      required final String email,
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
  String get email;
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
      _$OpenCopyWithImpl<$Res, Open>;
  @useResult
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
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_value.copyWith(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as String,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as String,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as String,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as String,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as String,
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as String,
      sunday: null == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String monday,
      String tuesday,
      String wednesday,
      String thursday,
      String friday,
      String saturday,
      String sunday});
}

/// @nodoc
class __$$_OpenCopyWithImpl<$Res> extends _$OpenCopyWithImpl<$Res, _$_Open>
    implements _$$_OpenCopyWith<$Res> {
  __$$_OpenCopyWithImpl(_$_Open _value, $Res Function(_$_Open) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_$_Open(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as String,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as String,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as String,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as String,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as String,
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as String,
      sunday: null == sunday
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
