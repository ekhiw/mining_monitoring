// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_regis_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceRegisResponse _$DeviceRegisResponseFromJson(Map<String, dynamic> json) {
  return _DeviceRegisResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceRegisResponse {
  int get code => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceRegisResponseCopyWith<DeviceRegisResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceRegisResponseCopyWith<$Res> {
  factory $DeviceRegisResponseCopyWith(
          DeviceRegisResponse value, $Res Function(DeviceRegisResponse) then) =
      _$DeviceRegisResponseCopyWithImpl<$Res, DeviceRegisResponse>;
  @useResult
  $Res call({int code, bool status, String message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeviceRegisResponseCopyWithImpl<$Res, $Val extends DeviceRegisResponse>
    implements $DeviceRegisResponseCopyWith<$Res> {
  _$DeviceRegisResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceRegisResponseImplCopyWith<$Res>
    implements $DeviceRegisResponseCopyWith<$Res> {
  factory _$$DeviceRegisResponseImplCopyWith(_$DeviceRegisResponseImpl value,
          $Res Function(_$DeviceRegisResponseImpl) then) =
      __$$DeviceRegisResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, bool status, String message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DeviceRegisResponseImplCopyWithImpl<$Res>
    extends _$DeviceRegisResponseCopyWithImpl<$Res, _$DeviceRegisResponseImpl>
    implements _$$DeviceRegisResponseImplCopyWith<$Res> {
  __$$DeviceRegisResponseImplCopyWithImpl(_$DeviceRegisResponseImpl _value,
      $Res Function(_$DeviceRegisResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$DeviceRegisResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceRegisResponseImpl implements _DeviceRegisResponse {
  _$DeviceRegisResponseImpl(
      {required this.code,
      required this.status,
      required this.message,
      required this.data});

  factory _$DeviceRegisResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceRegisResponseImplFromJson(json);

  @override
  final int code;
  @override
  final bool status;
  @override
  final String message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'DeviceRegisResponse(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceRegisResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceRegisResponseImplCopyWith<_$DeviceRegisResponseImpl> get copyWith =>
      __$$DeviceRegisResponseImplCopyWithImpl<_$DeviceRegisResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceRegisResponseImplToJson(
      this,
    );
  }
}

abstract class _DeviceRegisResponse implements DeviceRegisResponse {
  factory _DeviceRegisResponse(
      {required final int code,
      required final bool status,
      required final String message,
      required final Data? data}) = _$DeviceRegisResponseImpl;

  factory _DeviceRegisResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceRegisResponseImpl.fromJson;

  @override
  int get code;
  @override
  bool get status;
  @override
  String get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$DeviceRegisResponseImplCopyWith<_$DeviceRegisResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get id => throw _privateConstructorUsedError;
  bool get is_active => throw _privateConstructorUsedError;
  DateTime? get activated_at => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  String get head_unit_sn => throw _privateConstructorUsedError;
  String? get equipment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String id,
      bool is_active,
      DateTime? activated_at,
      DateTime created_at,
      DateTime updated_at,
      String head_unit_sn,
      String? equipment});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_active = null,
    Object? activated_at = freezed,
    Object? created_at = null,
    Object? updated_at = null,
    Object? head_unit_sn = null,
    Object? equipment = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      is_active: null == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool,
      activated_at: freezed == activated_at
          ? _value.activated_at
          : activated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      head_unit_sn: null == head_unit_sn
          ? _value.head_unit_sn
          : head_unit_sn // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool is_active,
      DateTime? activated_at,
      DateTime created_at,
      DateTime updated_at,
      String head_unit_sn,
      String? equipment});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_active = null,
    Object? activated_at = freezed,
    Object? created_at = null,
    Object? updated_at = null,
    Object? head_unit_sn = null,
    Object? equipment = freezed,
  }) {
    return _then(_$DataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      is_active: null == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool,
      activated_at: freezed == activated_at
          ? _value.activated_at
          : activated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      head_unit_sn: null == head_unit_sn
          ? _value.head_unit_sn
          : head_unit_sn // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {required this.id,
      required this.is_active,
      this.activated_at,
      required this.created_at,
      required this.updated_at,
      required this.head_unit_sn,
      this.equipment});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String id;
  @override
  final bool is_active;
  @override
  final DateTime? activated_at;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;
  @override
  final String head_unit_sn;
  @override
  final String? equipment;

  @override
  String toString() {
    return 'Data(id: $id, is_active: $is_active, activated_at: $activated_at, created_at: $created_at, updated_at: $updated_at, head_unit_sn: $head_unit_sn, equipment: $equipment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.activated_at, activated_at) ||
                other.activated_at == activated_at) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.head_unit_sn, head_unit_sn) ||
                other.head_unit_sn == head_unit_sn) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, is_active, activated_at,
      created_at, updated_at, head_unit_sn, equipment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {required final String id,
      required final bool is_active,
      final DateTime? activated_at,
      required final DateTime created_at,
      required final DateTime updated_at,
      required final String head_unit_sn,
      final String? equipment}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String get id;
  @override
  bool get is_active;
  @override
  DateTime? get activated_at;
  @override
  DateTime get created_at;
  @override
  DateTime get updated_at;
  @override
  String get head_unit_sn;
  @override
  String? get equipment;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
