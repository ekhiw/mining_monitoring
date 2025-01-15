// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_device_id_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckDeviceIdResponseEntityImpl _$$CheckDeviceIdResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckDeviceIdResponseEntityImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as bool,
      message: json['message'] as String,
      data: CheckDeviceIdResponseDataEntity.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckDeviceIdResponseEntityImplToJson(
        _$CheckDeviceIdResponseEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CheckDeviceIdResponseDataEntityImpl
    _$$CheckDeviceIdResponseDataEntityImplFromJson(Map<String, dynamic> json) =>
        _$CheckDeviceIdResponseDataEntityImpl(
          id: json['id'] as String,
          isActive: json['is_active'] as bool,
          activatedAt: json['activated_at'] as String?,
          createdAt: json['created_at'] as String,
          updatedAt: json['updated_at'] as String,
          headUnitSn: json['head_unit_sn'] as String,
          equipment: json['equipment'],
        );

Map<String, dynamic> _$$CheckDeviceIdResponseDataEntityImplToJson(
        _$CheckDeviceIdResponseDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'activated_at': instance.activatedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'head_unit_sn': instance.headUnitSn,
      'equipment': instance.equipment,
    };
