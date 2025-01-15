// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_device_id_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckDeviceIdResponseEntity _$CheckDeviceIdResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _CheckDeviceIdResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$CheckDeviceIdResponseEntity {
  int get code => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  CheckDeviceIdResponseDataEntity get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckDeviceIdResponseEntityCopyWith<CheckDeviceIdResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckDeviceIdResponseEntityCopyWith<$Res> {
  factory $CheckDeviceIdResponseEntityCopyWith(
          CheckDeviceIdResponseEntity value,
          $Res Function(CheckDeviceIdResponseEntity) then) =
      _$CheckDeviceIdResponseEntityCopyWithImpl<$Res,
          CheckDeviceIdResponseEntity>;
  @useResult
  $Res call(
      {int code,
      bool status,
      String message,
      CheckDeviceIdResponseDataEntity data});

  $CheckDeviceIdResponseDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$CheckDeviceIdResponseEntityCopyWithImpl<$Res,
        $Val extends CheckDeviceIdResponseEntity>
    implements $CheckDeviceIdResponseEntityCopyWith<$Res> {
  _$CheckDeviceIdResponseEntityCopyWithImpl(this._value, this._then);

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
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckDeviceIdResponseDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckDeviceIdResponseDataEntityCopyWith<$Res> get data {
    return $CheckDeviceIdResponseDataEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckDeviceIdResponseEntityImplCopyWith<$Res>
    implements $CheckDeviceIdResponseEntityCopyWith<$Res> {
  factory _$$CheckDeviceIdResponseEntityImplCopyWith(
          _$CheckDeviceIdResponseEntityImpl value,
          $Res Function(_$CheckDeviceIdResponseEntityImpl) then) =
      __$$CheckDeviceIdResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      bool status,
      String message,
      CheckDeviceIdResponseDataEntity data});

  @override
  $CheckDeviceIdResponseDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$CheckDeviceIdResponseEntityImplCopyWithImpl<$Res>
    extends _$CheckDeviceIdResponseEntityCopyWithImpl<$Res,
        _$CheckDeviceIdResponseEntityImpl>
    implements _$$CheckDeviceIdResponseEntityImplCopyWith<$Res> {
  __$$CheckDeviceIdResponseEntityImplCopyWithImpl(
      _$CheckDeviceIdResponseEntityImpl _value,
      $Res Function(_$CheckDeviceIdResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$CheckDeviceIdResponseEntityImpl(
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckDeviceIdResponseDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckDeviceIdResponseEntityImpl
    implements _CheckDeviceIdResponseEntity {
  _$CheckDeviceIdResponseEntityImpl(
      {required this.code,
      required this.status,
      required this.message,
      required this.data});

  factory _$CheckDeviceIdResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CheckDeviceIdResponseEntityImplFromJson(json);

  @override
  final int code;
  @override
  final bool status;
  @override
  final String message;
  @override
  final CheckDeviceIdResponseDataEntity data;

  @override
  String toString() {
    return 'CheckDeviceIdResponseEntity(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckDeviceIdResponseEntityImpl &&
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
  _$$CheckDeviceIdResponseEntityImplCopyWith<_$CheckDeviceIdResponseEntityImpl>
      get copyWith => __$$CheckDeviceIdResponseEntityImplCopyWithImpl<
          _$CheckDeviceIdResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckDeviceIdResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _CheckDeviceIdResponseEntity
    implements CheckDeviceIdResponseEntity {
  factory _CheckDeviceIdResponseEntity(
          {required final int code,
          required final bool status,
          required final String message,
          required final CheckDeviceIdResponseDataEntity data}) =
      _$CheckDeviceIdResponseEntityImpl;

  factory _CheckDeviceIdResponseEntity.fromJson(Map<String, dynamic> json) =
      _$CheckDeviceIdResponseEntityImpl.fromJson;

  @override
  int get code;
  @override
  bool get status;
  @override
  String get message;
  @override
  CheckDeviceIdResponseDataEntity get data;
  @override
  @JsonKey(ignore: true)
  _$$CheckDeviceIdResponseEntityImplCopyWith<_$CheckDeviceIdResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CheckDeviceIdResponseDataEntity _$CheckDeviceIdResponseDataEntityFromJson(
    Map<String, dynamic> json) {
  return _CheckDeviceIdResponseDataEntity.fromJson(json);
}

/// @nodoc
mixin _$CheckDeviceIdResponseDataEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'activated_at')
  String? get activatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_unit_sn')
  String get headUnitSn => throw _privateConstructorUsedError;
  dynamic get equipment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckDeviceIdResponseDataEntityCopyWith<CheckDeviceIdResponseDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckDeviceIdResponseDataEntityCopyWith<$Res> {
  factory $CheckDeviceIdResponseDataEntityCopyWith(
          CheckDeviceIdResponseDataEntity value,
          $Res Function(CheckDeviceIdResponseDataEntity) then) =
      _$CheckDeviceIdResponseDataEntityCopyWithImpl<$Res,
          CheckDeviceIdResponseDataEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'activated_at') String? activatedAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'head_unit_sn') String headUnitSn,
      dynamic equipment});
}

/// @nodoc
class _$CheckDeviceIdResponseDataEntityCopyWithImpl<$Res,
        $Val extends CheckDeviceIdResponseDataEntity>
    implements $CheckDeviceIdResponseDataEntityCopyWith<$Res> {
  _$CheckDeviceIdResponseDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isActive = null,
    Object? activatedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? headUnitSn = null,
    Object? equipment = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      activatedAt: freezed == activatedAt
          ? _value.activatedAt
          : activatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      headUnitSn: null == headUnitSn
          ? _value.headUnitSn
          : headUnitSn // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckDeviceIdResponseDataEntityImplCopyWith<$Res>
    implements $CheckDeviceIdResponseDataEntityCopyWith<$Res> {
  factory _$$CheckDeviceIdResponseDataEntityImplCopyWith(
          _$CheckDeviceIdResponseDataEntityImpl value,
          $Res Function(_$CheckDeviceIdResponseDataEntityImpl) then) =
      __$$CheckDeviceIdResponseDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'activated_at') String? activatedAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'head_unit_sn') String headUnitSn,
      dynamic equipment});
}

/// @nodoc
class __$$CheckDeviceIdResponseDataEntityImplCopyWithImpl<$Res>
    extends _$CheckDeviceIdResponseDataEntityCopyWithImpl<$Res,
        _$CheckDeviceIdResponseDataEntityImpl>
    implements _$$CheckDeviceIdResponseDataEntityImplCopyWith<$Res> {
  __$$CheckDeviceIdResponseDataEntityImplCopyWithImpl(
      _$CheckDeviceIdResponseDataEntityImpl _value,
      $Res Function(_$CheckDeviceIdResponseDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isActive = null,
    Object? activatedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? headUnitSn = null,
    Object? equipment = freezed,
  }) {
    return _then(_$CheckDeviceIdResponseDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      activatedAt: freezed == activatedAt
          ? _value.activatedAt
          : activatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      headUnitSn: null == headUnitSn
          ? _value.headUnitSn
          : headUnitSn // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckDeviceIdResponseDataEntityImpl
    implements _CheckDeviceIdResponseDataEntity {
  _$CheckDeviceIdResponseDataEntityImpl(
      {required this.id,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'activated_at') this.activatedAt,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'head_unit_sn') required this.headUnitSn,
      required this.equipment});

  factory _$CheckDeviceIdResponseDataEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CheckDeviceIdResponseDataEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'activated_at')
  final String? activatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'head_unit_sn')
  final String headUnitSn;
  @override
  final dynamic equipment;

  @override
  String toString() {
    return 'CheckDeviceIdResponseDataEntity(id: $id, isActive: $isActive, activatedAt: $activatedAt, createdAt: $createdAt, updatedAt: $updatedAt, headUnitSn: $headUnitSn, equipment: $equipment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckDeviceIdResponseDataEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.activatedAt, activatedAt) ||
                other.activatedAt == activatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.headUnitSn, headUnitSn) ||
                other.headUnitSn == headUnitSn) &&
            const DeepCollectionEquality().equals(other.equipment, equipment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isActive,
      activatedAt,
      createdAt,
      updatedAt,
      headUnitSn,
      const DeepCollectionEquality().hash(equipment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckDeviceIdResponseDataEntityImplCopyWith<
          _$CheckDeviceIdResponseDataEntityImpl>
      get copyWith => __$$CheckDeviceIdResponseDataEntityImplCopyWithImpl<
          _$CheckDeviceIdResponseDataEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckDeviceIdResponseDataEntityImplToJson(
      this,
    );
  }
}

abstract class _CheckDeviceIdResponseDataEntity
    implements CheckDeviceIdResponseDataEntity {
  factory _CheckDeviceIdResponseDataEntity(
          {required final String id,
          @JsonKey(name: 'is_active') required final bool isActive,
          @JsonKey(name: 'activated_at') final String? activatedAt,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt,
          @JsonKey(name: 'head_unit_sn') required final String headUnitSn,
          required final dynamic equipment}) =
      _$CheckDeviceIdResponseDataEntityImpl;

  factory _CheckDeviceIdResponseDataEntity.fromJson(Map<String, dynamic> json) =
      _$CheckDeviceIdResponseDataEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'activated_at')
  String? get activatedAt;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'head_unit_sn')
  String get headUnitSn;
  @override
  dynamic get equipment;
  @override
  @JsonKey(ignore: true)
  _$$CheckDeviceIdResponseDataEntityImplCopyWith<
          _$CheckDeviceIdResponseDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
