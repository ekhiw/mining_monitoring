// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseEntityImpl _$$UserResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseEntityImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as bool,
      message: json['message'] as String,
      data:
          UserResponseDataEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserResponseEntityImplToJson(
        _$UserResponseEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$UserResponseDataEntityImpl _$$UserResponseDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseDataEntityImpl(
      id: json['id'] as String,
      roleName: json['role_name'] as String,
      departmentId: json['department_id'] as String,
      departmentName: json['department_name'] as String,
      siteId: json['site_id'] as String,
      siteName: json['site_name'] as String,
      nik: json['nik'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      isActive: json['is_active'] as bool,
      imageUrl: json['image_url'] as String,
      unitId: json['unit_id'] as String,
      unitCode: json['unit_code'] as String,
      unitTypeId: json['unit_type_id'] as String,
      loginAt: json['login_at'] as String,
    );

Map<String, dynamic> _$$UserResponseDataEntityImplToJson(
        _$UserResponseDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role_name': instance.roleName,
      'department_id': instance.departmentId,
      'department_name': instance.departmentName,
      'site_id': instance.siteId,
      'site_name': instance.siteName,
      'nik': instance.nik,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'is_active': instance.isActive,
      'image_url': instance.imageUrl,
      'unit_id': instance.unitId,
      'unit_code': instance.unitCode,
      'unit_type_id': instance.unitTypeId,
      'login_at': instance.loginAt,
    };
