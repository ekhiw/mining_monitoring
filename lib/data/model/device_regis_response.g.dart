// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_regis_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceRegisResponseImpl _$$DeviceRegisResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceRegisResponseImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as bool,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeviceRegisResponseImplToJson(
        _$DeviceRegisResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String,
      is_active: json['is_active'] as bool,
      activated_at: json['activated_at'] == null
          ? null
          : DateTime.parse(json['activated_at'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      head_unit_sn: json['head_unit_sn'] as String,
      equipment: json['equipment'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.is_active,
      'activated_at': instance.activated_at?.toIso8601String(),
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'head_unit_sn': instance.head_unit_sn,
      'equipment': instance.equipment,
    };
