// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'websocket_message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebsocketMessageEntity _$WebsocketMessageEntityFromJson(
    Map<String, dynamic> json) {
  return _WebsocketMessageEntity.fromJson(json);
}

/// @nodoc
mixin _$WebsocketMessageEntity {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'equipment_id')
  String get equipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'equipment_id')
  set equipmentId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_nik')
  String get senderNik => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_nik')
  set senderNik(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_read')
  bool get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_read')
  set isRead(bool value) => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  set message(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_name')
  String get senderName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_name')
  set senderName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_type')
  String get deviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_type')
  set deviceType(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  set categoryId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'equipment_code')
  String get equipmentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'equipment_code')
  set equipmentCode(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'fleet_id')
  dynamic get fleetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fleet_id')
  set fleetId(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'equipment_site_id')
  String get equipmentSiteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'equipment_site_id')
  set equipmentSiteId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  set categoryName(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebsocketMessageEntityCopyWith<WebsocketMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebsocketMessageEntityCopyWith<$Res> {
  factory $WebsocketMessageEntityCopyWith(WebsocketMessageEntity value,
          $Res Function(WebsocketMessageEntity) then) =
      _$WebsocketMessageEntityCopyWithImpl<$Res, WebsocketMessageEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'equipment_id') String equipmentId,
      @JsonKey(name: 'sender_nik') String senderNik,
      @JsonKey(name: 'is_read') bool isRead,
      String message,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'sender_name') String senderName,
      @JsonKey(name: 'device_type') String deviceType,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'equipment_code') String equipmentCode,
      @JsonKey(name: 'fleet_id') dynamic fleetId,
      @JsonKey(name: 'equipment_site_id') String equipmentSiteId,
      @JsonKey(name: 'category_name') String categoryName});
}

/// @nodoc
class _$WebsocketMessageEntityCopyWithImpl<$Res,
        $Val extends WebsocketMessageEntity>
    implements $WebsocketMessageEntityCopyWith<$Res> {
  _$WebsocketMessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? equipmentId = null,
    Object? senderNik = null,
    Object? isRead = null,
    Object? message = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? senderName = null,
    Object? deviceType = null,
    Object? categoryId = null,
    Object? equipmentCode = null,
    Object? fleetId = freezed,
    Object? equipmentSiteId = null,
    Object? categoryName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentId: null == equipmentId
          ? _value.equipmentId
          : equipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      senderNik: null == senderNik
          ? _value.senderNik
          : senderNik // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentCode: null == equipmentCode
          ? _value.equipmentCode
          : equipmentCode // ignore: cast_nullable_to_non_nullable
              as String,
      fleetId: freezed == fleetId
          ? _value.fleetId
          : fleetId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      equipmentSiteId: null == equipmentSiteId
          ? _value.equipmentSiteId
          : equipmentSiteId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebsocketMessageEntityImplCopyWith<$Res>
    implements $WebsocketMessageEntityCopyWith<$Res> {
  factory _$$WebsocketMessageEntityImplCopyWith(
          _$WebsocketMessageEntityImpl value,
          $Res Function(_$WebsocketMessageEntityImpl) then) =
      __$$WebsocketMessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'equipment_id') String equipmentId,
      @JsonKey(name: 'sender_nik') String senderNik,
      @JsonKey(name: 'is_read') bool isRead,
      String message,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'sender_name') String senderName,
      @JsonKey(name: 'device_type') String deviceType,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'equipment_code') String equipmentCode,
      @JsonKey(name: 'fleet_id') dynamic fleetId,
      @JsonKey(name: 'equipment_site_id') String equipmentSiteId,
      @JsonKey(name: 'category_name') String categoryName});
}

/// @nodoc
class __$$WebsocketMessageEntityImplCopyWithImpl<$Res>
    extends _$WebsocketMessageEntityCopyWithImpl<$Res,
        _$WebsocketMessageEntityImpl>
    implements _$$WebsocketMessageEntityImplCopyWith<$Res> {
  __$$WebsocketMessageEntityImplCopyWithImpl(
      _$WebsocketMessageEntityImpl _value,
      $Res Function(_$WebsocketMessageEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? equipmentId = null,
    Object? senderNik = null,
    Object? isRead = null,
    Object? message = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? senderName = null,
    Object? deviceType = null,
    Object? categoryId = null,
    Object? equipmentCode = null,
    Object? fleetId = freezed,
    Object? equipmentSiteId = null,
    Object? categoryName = null,
  }) {
    return _then(_$WebsocketMessageEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentId: null == equipmentId
          ? _value.equipmentId
          : equipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      senderNik: null == senderNik
          ? _value.senderNik
          : senderNik // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentCode: null == equipmentCode
          ? _value.equipmentCode
          : equipmentCode // ignore: cast_nullable_to_non_nullable
              as String,
      fleetId: freezed == fleetId
          ? _value.fleetId
          : fleetId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      equipmentSiteId: null == equipmentSiteId
          ? _value.equipmentSiteId
          : equipmentSiteId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebsocketMessageEntityImpl implements _WebsocketMessageEntity {
  _$WebsocketMessageEntityImpl(
      {required this.id,
      @JsonKey(name: 'equipment_id') required this.equipmentId,
      @JsonKey(name: 'sender_nik') required this.senderNik,
      @JsonKey(name: 'is_read') required this.isRead,
      required this.message,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'sender_name') required this.senderName,
      @JsonKey(name: 'device_type') required this.deviceType,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'equipment_code') required this.equipmentCode,
      @JsonKey(name: 'fleet_id') required this.fleetId,
      @JsonKey(name: 'equipment_site_id') required this.equipmentSiteId,
      @JsonKey(name: 'category_name') required this.categoryName});

  factory _$WebsocketMessageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebsocketMessageEntityImplFromJson(json);

  @override
  String id;
  @override
  @JsonKey(name: 'equipment_id')
  String equipmentId;
  @override
  @JsonKey(name: 'sender_nik')
  String senderNik;
  @override
  @JsonKey(name: 'is_read')
  bool isRead;
  @override
  String message;
  @override
  @JsonKey(name: 'created_at')
  String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @override
  @JsonKey(name: 'sender_name')
  String senderName;
  @override
  @JsonKey(name: 'device_type')
  String deviceType;
  @override
  @JsonKey(name: 'category_id')
  String categoryId;
  @override
  @JsonKey(name: 'equipment_code')
  String equipmentCode;
  @override
  @JsonKey(name: 'fleet_id')
  dynamic fleetId;
  @override
  @JsonKey(name: 'equipment_site_id')
  String equipmentSiteId;
  @override
  @JsonKey(name: 'category_name')
  String categoryName;

  @override
  String toString() {
    return 'WebsocketMessageEntity(id: $id, equipmentId: $equipmentId, senderNik: $senderNik, isRead: $isRead, message: $message, createdAt: $createdAt, updatedAt: $updatedAt, senderName: $senderName, deviceType: $deviceType, categoryId: $categoryId, equipmentCode: $equipmentCode, fleetId: $fleetId, equipmentSiteId: $equipmentSiteId, categoryName: $categoryName)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebsocketMessageEntityImplCopyWith<_$WebsocketMessageEntityImpl>
      get copyWith => __$$WebsocketMessageEntityImplCopyWithImpl<
          _$WebsocketMessageEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebsocketMessageEntityImplToJson(
      this,
    );
  }
}

abstract class _WebsocketMessageEntity implements WebsocketMessageEntity {
  factory _WebsocketMessageEntity(
          {required String id,
          @JsonKey(name: 'equipment_id') required String equipmentId,
          @JsonKey(name: 'sender_nik') required String senderNik,
          @JsonKey(name: 'is_read') required bool isRead,
          required String message,
          @JsonKey(name: 'created_at') required String createdAt,
          @JsonKey(name: 'updated_at') required String updatedAt,
          @JsonKey(name: 'sender_name') required String senderName,
          @JsonKey(name: 'device_type') required String deviceType,
          @JsonKey(name: 'category_id') required String categoryId,
          @JsonKey(name: 'equipment_code') required String equipmentCode,
          @JsonKey(name: 'fleet_id') required dynamic fleetId,
          @JsonKey(name: 'equipment_site_id') required String equipmentSiteId,
          @JsonKey(name: 'category_name') required String categoryName}) =
      _$WebsocketMessageEntityImpl;

  factory _WebsocketMessageEntity.fromJson(Map<String, dynamic> json) =
      _$WebsocketMessageEntityImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  @JsonKey(name: 'equipment_id')
  String get equipmentId;
  @JsonKey(name: 'equipment_id')
  set equipmentId(String value);
  @override
  @JsonKey(name: 'sender_nik')
  String get senderNik;
  @JsonKey(name: 'sender_nik')
  set senderNik(String value);
  @override
  @JsonKey(name: 'is_read')
  bool get isRead;
  @JsonKey(name: 'is_read')
  set isRead(bool value);
  @override
  String get message;
  set message(String value);
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(String value);
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(String value);
  @override
  @JsonKey(name: 'sender_name')
  String get senderName;
  @JsonKey(name: 'sender_name')
  set senderName(String value);
  @override
  @JsonKey(name: 'device_type')
  String get deviceType;
  @JsonKey(name: 'device_type')
  set deviceType(String value);
  @override
  @JsonKey(name: 'category_id')
  String get categoryId;
  @JsonKey(name: 'category_id')
  set categoryId(String value);
  @override
  @JsonKey(name: 'equipment_code')
  String get equipmentCode;
  @JsonKey(name: 'equipment_code')
  set equipmentCode(String value);
  @override
  @JsonKey(name: 'fleet_id')
  dynamic get fleetId;
  @JsonKey(name: 'fleet_id')
  set fleetId(dynamic value);
  @override
  @JsonKey(name: 'equipment_site_id')
  String get equipmentSiteId;
  @JsonKey(name: 'equipment_site_id')
  set equipmentSiteId(String value);
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @JsonKey(name: 'category_name')
  set categoryName(String value);
  @override
  @JsonKey(ignore: true)
  _$$WebsocketMessageEntityImplCopyWith<_$WebsocketMessageEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
