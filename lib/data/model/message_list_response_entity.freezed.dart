// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_list_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageListResponseEntity _$MessageListResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _MessageListResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$MessageListResponseEntity {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  set status(bool value) => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  set message(String value) => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  set count(int value) => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  set total(int value) => throw _privateConstructorUsedError;
  List<WebsocketMessageEntity> get data => throw _privateConstructorUsedError;
  set data(List<WebsocketMessageEntity> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageListResponseEntityCopyWith<MessageListResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListResponseEntityCopyWith<$Res> {
  factory $MessageListResponseEntityCopyWith(MessageListResponseEntity value,
          $Res Function(MessageListResponseEntity) then) =
      _$MessageListResponseEntityCopyWithImpl<$Res, MessageListResponseEntity>;
  @useResult
  $Res call(
      {int code,
      bool status,
      String message,
      int page,
      int count,
      int total,
      List<WebsocketMessageEntity> data});
}

/// @nodoc
class _$MessageListResponseEntityCopyWithImpl<$Res,
        $Val extends MessageListResponseEntity>
    implements $MessageListResponseEntityCopyWith<$Res> {
  _$MessageListResponseEntityCopyWithImpl(this._value, this._then);

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
    Object? page = null,
    Object? count = null,
    Object? total = null,
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
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WebsocketMessageEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageListResponseEntityImplCopyWith<$Res>
    implements $MessageListResponseEntityCopyWith<$Res> {
  factory _$$MessageListResponseEntityImplCopyWith(
          _$MessageListResponseEntityImpl value,
          $Res Function(_$MessageListResponseEntityImpl) then) =
      __$$MessageListResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      bool status,
      String message,
      int page,
      int count,
      int total,
      List<WebsocketMessageEntity> data});
}

/// @nodoc
class __$$MessageListResponseEntityImplCopyWithImpl<$Res>
    extends _$MessageListResponseEntityCopyWithImpl<$Res,
        _$MessageListResponseEntityImpl>
    implements _$$MessageListResponseEntityImplCopyWith<$Res> {
  __$$MessageListResponseEntityImplCopyWithImpl(
      _$MessageListResponseEntityImpl _value,
      $Res Function(_$MessageListResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? page = null,
    Object? count = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_$MessageListResponseEntityImpl(
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
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WebsocketMessageEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageListResponseEntityImpl implements _MessageListResponseEntity {
  _$MessageListResponseEntityImpl(
      {required this.code,
      required this.status,
      required this.message,
      required this.page,
      required this.count,
      required this.total,
      required this.data});

  factory _$MessageListResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageListResponseEntityImplFromJson(json);

  @override
  int code;
  @override
  bool status;
  @override
  String message;
  @override
  int page;
  @override
  int count;
  @override
  int total;
  @override
  List<WebsocketMessageEntity> data;

  @override
  String toString() {
    return 'MessageListResponseEntity(code: $code, status: $status, message: $message, page: $page, count: $count, total: $total, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageListResponseEntityImplCopyWith<_$MessageListResponseEntityImpl>
      get copyWith => __$$MessageListResponseEntityImplCopyWithImpl<
          _$MessageListResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageListResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _MessageListResponseEntity implements MessageListResponseEntity {
  factory _MessageListResponseEntity(
          {required int code,
          required bool status,
          required String message,
          required int page,
          required int count,
          required int total,
          required List<WebsocketMessageEntity> data}) =
      _$MessageListResponseEntityImpl;

  factory _MessageListResponseEntity.fromJson(Map<String, dynamic> json) =
      _$MessageListResponseEntityImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  bool get status;
  set status(bool value);
  @override
  String get message;
  set message(String value);
  @override
  int get page;
  set page(int value);
  @override
  int get count;
  set count(int value);
  @override
  int get total;
  set total(int value);
  @override
  List<WebsocketMessageEntity> get data;
  set data(List<WebsocketMessageEntity> value);
  @override
  @JsonKey(ignore: true)
  _$$MessageListResponseEntityImplCopyWith<_$MessageListResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
