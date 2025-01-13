// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponseEntity _$UserResponseEntityFromJson(Map<String, dynamic> json) {
  return _UserResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$UserResponseEntity {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  set status(bool value) => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  set message(String value) => throw _privateConstructorUsedError;
  UserResponseDataEntity get data => throw _privateConstructorUsedError;
  set data(UserResponseDataEntity value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseEntityCopyWith<UserResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseEntityCopyWith<$Res> {
  factory $UserResponseEntityCopyWith(
          UserResponseEntity value, $Res Function(UserResponseEntity) then) =
      _$UserResponseEntityCopyWithImpl<$Res, UserResponseEntity>;
  @useResult
  $Res call(
      {int code, bool status, String message, UserResponseDataEntity data});

  $UserResponseDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$UserResponseEntityCopyWithImpl<$Res, $Val extends UserResponseEntity>
    implements $UserResponseEntityCopyWith<$Res> {
  _$UserResponseEntityCopyWithImpl(this._value, this._then);

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
              as UserResponseDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseDataEntityCopyWith<$Res> get data {
    return $UserResponseDataEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResponseEntityImplCopyWith<$Res>
    implements $UserResponseEntityCopyWith<$Res> {
  factory _$$UserResponseEntityImplCopyWith(_$UserResponseEntityImpl value,
          $Res Function(_$UserResponseEntityImpl) then) =
      __$$UserResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code, bool status, String message, UserResponseDataEntity data});

  @override
  $UserResponseDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserResponseEntityImplCopyWithImpl<$Res>
    extends _$UserResponseEntityCopyWithImpl<$Res, _$UserResponseEntityImpl>
    implements _$$UserResponseEntityImplCopyWith<$Res> {
  __$$UserResponseEntityImplCopyWithImpl(_$UserResponseEntityImpl _value,
      $Res Function(_$UserResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$UserResponseEntityImpl(
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
              as UserResponseDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseEntityImpl implements _UserResponseEntity {
  _$UserResponseEntityImpl(
      {required this.code,
      required this.status,
      required this.message,
      required this.data});

  factory _$UserResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseEntityImplFromJson(json);

  @override
  int code;
  @override
  bool status;
  @override
  String message;
  @override
  UserResponseDataEntity data;

  @override
  String toString() {
    return 'UserResponseEntity(code: $code, status: $status, message: $message, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseEntityImplCopyWith<_$UserResponseEntityImpl> get copyWith =>
      __$$UserResponseEntityImplCopyWithImpl<_$UserResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _UserResponseEntity implements UserResponseEntity {
  factory _UserResponseEntity(
      {required int code,
      required bool status,
      required String message,
      required UserResponseDataEntity data}) = _$UserResponseEntityImpl;

  factory _UserResponseEntity.fromJson(Map<String, dynamic> json) =
      _$UserResponseEntityImpl.fromJson;

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
  UserResponseDataEntity get data;
  set data(UserResponseDataEntity value);
  @override
  @JsonKey(ignore: true)
  _$$UserResponseEntityImplCopyWith<_$UserResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserResponseDataEntity _$UserResponseDataEntityFromJson(
    Map<String, dynamic> json) {
  return _UserResponseDataEntity.fromJson(json);
}

/// @nodoc
mixin _$UserResponseDataEntity {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_name')
  String get roleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_name')
  set roleName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'department_id')
  String get departmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'department_id')
  set departmentId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'department_name')
  String get departmentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'department_name')
  set departmentName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_id')
  String get siteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_id')
  set siteId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_name')
  String get siteName => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_name')
  set siteName(String value) => throw _privateConstructorUsedError;
  String get nik => throw _privateConstructorUsedError;
  set nik(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  set phone(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  set isActive(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  set imageUrl(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_id')
  String get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_id')
  set unitId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_code')
  String get unitCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_code')
  set unitCode(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_type_id')
  String get unitTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_type_id')
  set unitTypeId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'login_at')
  String get loginAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'login_at')
  set loginAt(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseDataEntityCopyWith<UserResponseDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseDataEntityCopyWith<$Res> {
  factory $UserResponseDataEntityCopyWith(UserResponseDataEntity value,
          $Res Function(UserResponseDataEntity) then) =
      _$UserResponseDataEntityCopyWithImpl<$Res, UserResponseDataEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'role_name') String roleName,
      @JsonKey(name: 'department_id') String departmentId,
      @JsonKey(name: 'department_name') String departmentName,
      @JsonKey(name: 'site_id') String siteId,
      @JsonKey(name: 'site_name') String siteName,
      String nik,
      String name,
      String email,
      String phone,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'unit_id') String unitId,
      @JsonKey(name: 'unit_code') String unitCode,
      @JsonKey(name: 'unit_type_id') String unitTypeId,
      @JsonKey(name: 'login_at') String loginAt});
}

/// @nodoc
class _$UserResponseDataEntityCopyWithImpl<$Res,
        $Val extends UserResponseDataEntity>
    implements $UserResponseDataEntityCopyWith<$Res> {
  _$UserResponseDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roleName = null,
    Object? departmentId = null,
    Object? departmentName = null,
    Object? siteId = null,
    Object? siteName = null,
    Object? nik = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? isActive = null,
    Object? imageUrl = null,
    Object? unitId = null,
    Object? unitCode = null,
    Object? unitTypeId = null,
    Object? loginAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String,
      departmentName: null == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String,
      unitCode: null == unitCode
          ? _value.unitCode
          : unitCode // ignore: cast_nullable_to_non_nullable
              as String,
      unitTypeId: null == unitTypeId
          ? _value.unitTypeId
          : unitTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      loginAt: null == loginAt
          ? _value.loginAt
          : loginAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserResponseDataEntityImplCopyWith<$Res>
    implements $UserResponseDataEntityCopyWith<$Res> {
  factory _$$UserResponseDataEntityImplCopyWith(
          _$UserResponseDataEntityImpl value,
          $Res Function(_$UserResponseDataEntityImpl) then) =
      __$$UserResponseDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'role_name') String roleName,
      @JsonKey(name: 'department_id') String departmentId,
      @JsonKey(name: 'department_name') String departmentName,
      @JsonKey(name: 'site_id') String siteId,
      @JsonKey(name: 'site_name') String siteName,
      String nik,
      String name,
      String email,
      String phone,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'unit_id') String unitId,
      @JsonKey(name: 'unit_code') String unitCode,
      @JsonKey(name: 'unit_type_id') String unitTypeId,
      @JsonKey(name: 'login_at') String loginAt});
}

/// @nodoc
class __$$UserResponseDataEntityImplCopyWithImpl<$Res>
    extends _$UserResponseDataEntityCopyWithImpl<$Res,
        _$UserResponseDataEntityImpl>
    implements _$$UserResponseDataEntityImplCopyWith<$Res> {
  __$$UserResponseDataEntityImplCopyWithImpl(
      _$UserResponseDataEntityImpl _value,
      $Res Function(_$UserResponseDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roleName = null,
    Object? departmentId = null,
    Object? departmentName = null,
    Object? siteId = null,
    Object? siteName = null,
    Object? nik = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? isActive = null,
    Object? imageUrl = null,
    Object? unitId = null,
    Object? unitCode = null,
    Object? unitTypeId = null,
    Object? loginAt = null,
  }) {
    return _then(_$UserResponseDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String,
      departmentName: null == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String,
      unitCode: null == unitCode
          ? _value.unitCode
          : unitCode // ignore: cast_nullable_to_non_nullable
              as String,
      unitTypeId: null == unitTypeId
          ? _value.unitTypeId
          : unitTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      loginAt: null == loginAt
          ? _value.loginAt
          : loginAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseDataEntityImpl implements _UserResponseDataEntity {
  _$UserResponseDataEntityImpl(
      {required this.id,
      @JsonKey(name: 'role_name') required this.roleName,
      @JsonKey(name: 'department_id') required this.departmentId,
      @JsonKey(name: 'department_name') required this.departmentName,
      @JsonKey(name: 'site_id') required this.siteId,
      @JsonKey(name: 'site_name') required this.siteName,
      required this.nik,
      required this.name,
      required this.email,
      required this.phone,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'unit_id') required this.unitId,
      @JsonKey(name: 'unit_code') required this.unitCode,
      @JsonKey(name: 'unit_type_id') required this.unitTypeId,
      @JsonKey(name: 'login_at') required this.loginAt});

  factory _$UserResponseDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseDataEntityImplFromJson(json);

  @override
  String id;
  @override
  @JsonKey(name: 'role_name')
  String roleName;
  @override
  @JsonKey(name: 'department_id')
  String departmentId;
  @override
  @JsonKey(name: 'department_name')
  String departmentName;
  @override
  @JsonKey(name: 'site_id')
  String siteId;
  @override
  @JsonKey(name: 'site_name')
  String siteName;
  @override
  String nik;
  @override
  String name;
  @override
  String email;
  @override
  String phone;
  @override
  @JsonKey(name: 'is_active')
  bool isActive;
  @override
  @JsonKey(name: 'image_url')
  String imageUrl;
  @override
  @JsonKey(name: 'unit_id')
  String unitId;
  @override
  @JsonKey(name: 'unit_code')
  String unitCode;
  @override
  @JsonKey(name: 'unit_type_id')
  String unitTypeId;
  @override
  @JsonKey(name: 'login_at')
  String loginAt;

  @override
  String toString() {
    return 'UserResponseDataEntity(id: $id, roleName: $roleName, departmentId: $departmentId, departmentName: $departmentName, siteId: $siteId, siteName: $siteName, nik: $nik, name: $name, email: $email, phone: $phone, isActive: $isActive, imageUrl: $imageUrl, unitId: $unitId, unitCode: $unitCode, unitTypeId: $unitTypeId, loginAt: $loginAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseDataEntityImplCopyWith<_$UserResponseDataEntityImpl>
      get copyWith => __$$UserResponseDataEntityImplCopyWithImpl<
          _$UserResponseDataEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseDataEntityImplToJson(
      this,
    );
  }
}

abstract class _UserResponseDataEntity implements UserResponseDataEntity {
  factory _UserResponseDataEntity(
          {required String id,
          @JsonKey(name: 'role_name') required String roleName,
          @JsonKey(name: 'department_id') required String departmentId,
          @JsonKey(name: 'department_name') required String departmentName,
          @JsonKey(name: 'site_id') required String siteId,
          @JsonKey(name: 'site_name') required String siteName,
          required String nik,
          required String name,
          required String email,
          required String phone,
          @JsonKey(name: 'is_active') required bool isActive,
          @JsonKey(name: 'image_url') required String imageUrl,
          @JsonKey(name: 'unit_id') required String unitId,
          @JsonKey(name: 'unit_code') required String unitCode,
          @JsonKey(name: 'unit_type_id') required String unitTypeId,
          @JsonKey(name: 'login_at') required String loginAt}) =
      _$UserResponseDataEntityImpl;

  factory _UserResponseDataEntity.fromJson(Map<String, dynamic> json) =
      _$UserResponseDataEntityImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  @JsonKey(name: 'role_name')
  String get roleName;
  @JsonKey(name: 'role_name')
  set roleName(String value);
  @override
  @JsonKey(name: 'department_id')
  String get departmentId;
  @JsonKey(name: 'department_id')
  set departmentId(String value);
  @override
  @JsonKey(name: 'department_name')
  String get departmentName;
  @JsonKey(name: 'department_name')
  set departmentName(String value);
  @override
  @JsonKey(name: 'site_id')
  String get siteId;
  @JsonKey(name: 'site_id')
  set siteId(String value);
  @override
  @JsonKey(name: 'site_name')
  String get siteName;
  @JsonKey(name: 'site_name')
  set siteName(String value);
  @override
  String get nik;
  set nik(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get email;
  set email(String value);
  @override
  String get phone;
  set phone(String value);
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @JsonKey(name: 'is_active')
  set isActive(bool value);
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @JsonKey(name: 'image_url')
  set imageUrl(String value);
  @override
  @JsonKey(name: 'unit_id')
  String get unitId;
  @JsonKey(name: 'unit_id')
  set unitId(String value);
  @override
  @JsonKey(name: 'unit_code')
  String get unitCode;
  @JsonKey(name: 'unit_code')
  set unitCode(String value);
  @override
  @JsonKey(name: 'unit_type_id')
  String get unitTypeId;
  @JsonKey(name: 'unit_type_id')
  set unitTypeId(String value);
  @override
  @JsonKey(name: 'login_at')
  String get loginAt;
  @JsonKey(name: 'login_at')
  set loginAt(String value);
  @override
  @JsonKey(ignore: true)
  _$$UserResponseDataEntityImplCopyWith<_$UserResponseDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
