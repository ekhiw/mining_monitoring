// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorResponseEntity _$ErrorResponseEntityFromJson(Map<String, dynamic> json) {
  return _ErrorResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponseEntity {
  int get code => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseEntityCopyWith<ErrorResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseEntityCopyWith<$Res> {
  factory $ErrorResponseEntityCopyWith(
          ErrorResponseEntity value, $Res Function(ErrorResponseEntity) then) =
      _$ErrorResponseEntityCopyWithImpl<$Res, ErrorResponseEntity>;
  @useResult
  $Res call({int code, bool status, String message, String data});
}

/// @nodoc
class _$ErrorResponseEntityCopyWithImpl<$Res, $Val extends ErrorResponseEntity>
    implements $ErrorResponseEntityCopyWith<$Res> {
  _$ErrorResponseEntityCopyWithImpl(this._value, this._then);

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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorResponseEntityImplCopyWith<$Res>
    implements $ErrorResponseEntityCopyWith<$Res> {
  factory _$$ErrorResponseEntityImplCopyWith(_$ErrorResponseEntityImpl value,
          $Res Function(_$ErrorResponseEntityImpl) then) =
      __$$ErrorResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, bool status, String message, String data});
}

/// @nodoc
class __$$ErrorResponseEntityImplCopyWithImpl<$Res>
    extends _$ErrorResponseEntityCopyWithImpl<$Res, _$ErrorResponseEntityImpl>
    implements _$$ErrorResponseEntityImplCopyWith<$Res> {
  __$$ErrorResponseEntityImplCopyWithImpl(_$ErrorResponseEntityImpl _value,
      $Res Function(_$ErrorResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ErrorResponseEntityImpl(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorResponseEntityImpl implements _ErrorResponseEntity {
  _$ErrorResponseEntityImpl(
      {required this.code,
      required this.status,
      required this.message,
      required this.data});

  factory _$ErrorResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseEntityImplFromJson(json);

  @override
  final int code;
  @override
  final bool status;
  @override
  final String message;
  @override
  final String data;

  @override
  String toString() {
    return 'ErrorResponseEntity(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseEntityImpl &&
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
  _$$ErrorResponseEntityImplCopyWith<_$ErrorResponseEntityImpl> get copyWith =>
      __$$ErrorResponseEntityImplCopyWithImpl<_$ErrorResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _ErrorResponseEntity implements ErrorResponseEntity {
  factory _ErrorResponseEntity(
      {required final int code,
      required final bool status,
      required final String message,
      required final String data}) = _$ErrorResponseEntityImpl;

  factory _ErrorResponseEntity.fromJson(Map<String, dynamic> json) =
      _$ErrorResponseEntityImpl.fromJson;

  @override
  int get code;
  @override
  bool get status;
  @override
  String get message;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorResponseEntityImplCopyWith<_$ErrorResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
