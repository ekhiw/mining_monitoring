// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemplateMessageEntity _$TemplateMessageEntityFromJson(
    Map<String, dynamic> json) {
  return _TemplateMessageEntity.fromJson(json);
}

/// @nodoc
mixin _$TemplateMessageEntity {
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
  List<TemplateMessageDataEntity> get data =>
      throw _privateConstructorUsedError;
  set data(List<TemplateMessageDataEntity> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateMessageEntityCopyWith<TemplateMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateMessageEntityCopyWith<$Res> {
  factory $TemplateMessageEntityCopyWith(TemplateMessageEntity value,
          $Res Function(TemplateMessageEntity) then) =
      _$TemplateMessageEntityCopyWithImpl<$Res, TemplateMessageEntity>;
  @useResult
  $Res call(
      {int code,
      bool status,
      String message,
      int page,
      int count,
      int total,
      List<TemplateMessageDataEntity> data});
}

/// @nodoc
class _$TemplateMessageEntityCopyWithImpl<$Res,
        $Val extends TemplateMessageEntity>
    implements $TemplateMessageEntityCopyWith<$Res> {
  _$TemplateMessageEntityCopyWithImpl(this._value, this._then);

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
              as List<TemplateMessageDataEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateMessageEntityImplCopyWith<$Res>
    implements $TemplateMessageEntityCopyWith<$Res> {
  factory _$$TemplateMessageEntityImplCopyWith(
          _$TemplateMessageEntityImpl value,
          $Res Function(_$TemplateMessageEntityImpl) then) =
      __$$TemplateMessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      bool status,
      String message,
      int page,
      int count,
      int total,
      List<TemplateMessageDataEntity> data});
}

/// @nodoc
class __$$TemplateMessageEntityImplCopyWithImpl<$Res>
    extends _$TemplateMessageEntityCopyWithImpl<$Res,
        _$TemplateMessageEntityImpl>
    implements _$$TemplateMessageEntityImplCopyWith<$Res> {
  __$$TemplateMessageEntityImplCopyWithImpl(_$TemplateMessageEntityImpl _value,
      $Res Function(_$TemplateMessageEntityImpl) _then)
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
    return _then(_$TemplateMessageEntityImpl(
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
              as List<TemplateMessageDataEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateMessageEntityImpl implements _TemplateMessageEntity {
  _$TemplateMessageEntityImpl(
      {required this.code,
      required this.status,
      required this.message,
      required this.page,
      required this.count,
      required this.total,
      required this.data});

  factory _$TemplateMessageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateMessageEntityImplFromJson(json);

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
  List<TemplateMessageDataEntity> data;

  @override
  String toString() {
    return 'TemplateMessageEntity(code: $code, status: $status, message: $message, page: $page, count: $count, total: $total, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateMessageEntityImplCopyWith<_$TemplateMessageEntityImpl>
      get copyWith => __$$TemplateMessageEntityImplCopyWithImpl<
          _$TemplateMessageEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateMessageEntityImplToJson(
      this,
    );
  }
}

abstract class _TemplateMessageEntity implements TemplateMessageEntity {
  factory _TemplateMessageEntity(
          {required int code,
          required bool status,
          required String message,
          required int page,
          required int count,
          required int total,
          required List<TemplateMessageDataEntity> data}) =
      _$TemplateMessageEntityImpl;

  factory _TemplateMessageEntity.fromJson(Map<String, dynamic> json) =
      _$TemplateMessageEntityImpl.fromJson;

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
  List<TemplateMessageDataEntity> get data;
  set data(List<TemplateMessageDataEntity> value);
  @override
  @JsonKey(ignore: true)
  _$$TemplateMessageEntityImplCopyWith<_$TemplateMessageEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TemplateMessageDataEntity _$TemplateMessageDataEntityFromJson(
    Map<String, dynamic> json) {
  return _TemplateMessageDataEntity.fromJson(json);
}

/// @nodoc
mixin _$TemplateMessageDataEntity {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  set categoryId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  set categoryName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_for_operator')
  bool get isForOperator => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_for_operator')
  set isForOperator(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_for_dispatch')
  bool get isForDispatch => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_for_dispatch')
  set isForDispatch(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  set isActive(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_notif_scheduler')
  bool get isNotifScheduler => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_notif_scheduler')
  set isNotifScheduler(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'template_message_operator')
  String get templateMessageOperator => throw _privateConstructorUsedError;
  @JsonKey(name: 'template_message_operator')
  set templateMessageOperator(String value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'template_message_dispatch')
  String get templateMessageDispatch => throw _privateConstructorUsedError;
  @JsonKey(name: 'template_message_dispatch')
  set templateMessageDispatch(String value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateMessageDataEntityCopyWith<TemplateMessageDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateMessageDataEntityCopyWith<$Res> {
  factory $TemplateMessageDataEntityCopyWith(TemplateMessageDataEntity value,
          $Res Function(TemplateMessageDataEntity) then) =
      _$TemplateMessageDataEntityCopyWithImpl<$Res, TemplateMessageDataEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'is_for_operator') bool isForOperator,
      @JsonKey(name: 'is_for_dispatch') bool isForDispatch,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'is_notif_scheduler') bool isNotifScheduler,
      @JsonKey(name: 'template_message_operator')
      String templateMessageOperator,
      @JsonKey(name: 'template_message_dispatch')
      String templateMessageDispatch});
}

/// @nodoc
class _$TemplateMessageDataEntityCopyWithImpl<$Res,
        $Val extends TemplateMessageDataEntity>
    implements $TemplateMessageDataEntityCopyWith<$Res> {
  _$TemplateMessageDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? categoryName = null,
    Object? isForOperator = null,
    Object? isForDispatch = null,
    Object? isActive = null,
    Object? isNotifScheduler = null,
    Object? templateMessageOperator = null,
    Object? templateMessageDispatch = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      isForOperator: null == isForOperator
          ? _value.isForOperator
          : isForOperator // ignore: cast_nullable_to_non_nullable
              as bool,
      isForDispatch: null == isForDispatch
          ? _value.isForDispatch
          : isForDispatch // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotifScheduler: null == isNotifScheduler
          ? _value.isNotifScheduler
          : isNotifScheduler // ignore: cast_nullable_to_non_nullable
              as bool,
      templateMessageOperator: null == templateMessageOperator
          ? _value.templateMessageOperator
          : templateMessageOperator // ignore: cast_nullable_to_non_nullable
              as String,
      templateMessageDispatch: null == templateMessageDispatch
          ? _value.templateMessageDispatch
          : templateMessageDispatch // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateMessageDataEntityImplCopyWith<$Res>
    implements $TemplateMessageDataEntityCopyWith<$Res> {
  factory _$$TemplateMessageDataEntityImplCopyWith(
          _$TemplateMessageDataEntityImpl value,
          $Res Function(_$TemplateMessageDataEntityImpl) then) =
      __$$TemplateMessageDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'is_for_operator') bool isForOperator,
      @JsonKey(name: 'is_for_dispatch') bool isForDispatch,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'is_notif_scheduler') bool isNotifScheduler,
      @JsonKey(name: 'template_message_operator')
      String templateMessageOperator,
      @JsonKey(name: 'template_message_dispatch')
      String templateMessageDispatch});
}

/// @nodoc
class __$$TemplateMessageDataEntityImplCopyWithImpl<$Res>
    extends _$TemplateMessageDataEntityCopyWithImpl<$Res,
        _$TemplateMessageDataEntityImpl>
    implements _$$TemplateMessageDataEntityImplCopyWith<$Res> {
  __$$TemplateMessageDataEntityImplCopyWithImpl(
      _$TemplateMessageDataEntityImpl _value,
      $Res Function(_$TemplateMessageDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? categoryName = null,
    Object? isForOperator = null,
    Object? isForDispatch = null,
    Object? isActive = null,
    Object? isNotifScheduler = null,
    Object? templateMessageOperator = null,
    Object? templateMessageDispatch = null,
  }) {
    return _then(_$TemplateMessageDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      isForOperator: null == isForOperator
          ? _value.isForOperator
          : isForOperator // ignore: cast_nullable_to_non_nullable
              as bool,
      isForDispatch: null == isForDispatch
          ? _value.isForDispatch
          : isForDispatch // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotifScheduler: null == isNotifScheduler
          ? _value.isNotifScheduler
          : isNotifScheduler // ignore: cast_nullable_to_non_nullable
              as bool,
      templateMessageOperator: null == templateMessageOperator
          ? _value.templateMessageOperator
          : templateMessageOperator // ignore: cast_nullable_to_non_nullable
              as String,
      templateMessageDispatch: null == templateMessageDispatch
          ? _value.templateMessageDispatch
          : templateMessageDispatch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateMessageDataEntityImpl implements _TemplateMessageDataEntity {
  _$TemplateMessageDataEntityImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'category_name') required this.categoryName,
      @JsonKey(name: 'is_for_operator') required this.isForOperator,
      @JsonKey(name: 'is_for_dispatch') required this.isForDispatch,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'is_notif_scheduler') required this.isNotifScheduler,
      @JsonKey(name: 'template_message_operator')
      required this.templateMessageOperator,
      @JsonKey(name: 'template_message_dispatch')
      required this.templateMessageDispatch});

  factory _$TemplateMessageDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateMessageDataEntityImplFromJson(json);

  @override
  String id;
  @override
  String name;
  @override
  @JsonKey(name: 'category_id')
  String categoryId;
  @override
  @JsonKey(name: 'created_at')
  String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @override
  @JsonKey(name: 'category_name')
  String categoryName;
  @override
  @JsonKey(name: 'is_for_operator')
  bool isForOperator;
  @override
  @JsonKey(name: 'is_for_dispatch')
  bool isForDispatch;
  @override
  @JsonKey(name: 'is_active')
  bool isActive;
  @override
  @JsonKey(name: 'is_notif_scheduler')
  bool isNotifScheduler;
  @override
  @JsonKey(name: 'template_message_operator')
  String templateMessageOperator;
  @override
  @JsonKey(name: 'template_message_dispatch')
  String templateMessageDispatch;

  @override
  String toString() {
    return 'TemplateMessageDataEntity(id: $id, name: $name, categoryId: $categoryId, createdAt: $createdAt, updatedAt: $updatedAt, categoryName: $categoryName, isForOperator: $isForOperator, isForDispatch: $isForDispatch, isActive: $isActive, isNotifScheduler: $isNotifScheduler, templateMessageOperator: $templateMessageOperator, templateMessageDispatch: $templateMessageDispatch)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateMessageDataEntityImplCopyWith<_$TemplateMessageDataEntityImpl>
      get copyWith => __$$TemplateMessageDataEntityImplCopyWithImpl<
          _$TemplateMessageDataEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateMessageDataEntityImplToJson(
      this,
    );
  }
}

abstract class _TemplateMessageDataEntity implements TemplateMessageDataEntity {
  factory _TemplateMessageDataEntity(
          {required String id,
          required String name,
          @JsonKey(name: 'category_id') required String categoryId,
          @JsonKey(name: 'created_at') required String createdAt,
          @JsonKey(name: 'updated_at') required String updatedAt,
          @JsonKey(name: 'category_name') required String categoryName,
          @JsonKey(name: 'is_for_operator') required bool isForOperator,
          @JsonKey(name: 'is_for_dispatch') required bool isForDispatch,
          @JsonKey(name: 'is_active') required bool isActive,
          @JsonKey(name: 'is_notif_scheduler') required bool isNotifScheduler,
          @JsonKey(name: 'template_message_operator')
          required String templateMessageOperator,
          @JsonKey(name: 'template_message_dispatch')
          required String templateMessageDispatch}) =
      _$TemplateMessageDataEntityImpl;

  factory _TemplateMessageDataEntity.fromJson(Map<String, dynamic> json) =
      _$TemplateMessageDataEntityImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  @JsonKey(name: 'category_id')
  String get categoryId;
  @JsonKey(name: 'category_id')
  set categoryId(String value);
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
  @JsonKey(name: 'category_name')
  String get categoryName;
  @JsonKey(name: 'category_name')
  set categoryName(String value);
  @override
  @JsonKey(name: 'is_for_operator')
  bool get isForOperator;
  @JsonKey(name: 'is_for_operator')
  set isForOperator(bool value);
  @override
  @JsonKey(name: 'is_for_dispatch')
  bool get isForDispatch;
  @JsonKey(name: 'is_for_dispatch')
  set isForDispatch(bool value);
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @JsonKey(name: 'is_active')
  set isActive(bool value);
  @override
  @JsonKey(name: 'is_notif_scheduler')
  bool get isNotifScheduler;
  @JsonKey(name: 'is_notif_scheduler')
  set isNotifScheduler(bool value);
  @override
  @JsonKey(name: 'template_message_operator')
  String get templateMessageOperator;
  @JsonKey(name: 'template_message_operator')
  set templateMessageOperator(String value);
  @override
  @JsonKey(name: 'template_message_dispatch')
  String get templateMessageDispatch;
  @JsonKey(name: 'template_message_dispatch')
  set templateMessageDispatch(String value);
  @override
  @JsonKey(ignore: true)
  _$$TemplateMessageDataEntityImplCopyWith<_$TemplateMessageDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
