// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_check_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceCheckResponseImpl _$$DeviceCheckResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceCheckResponseImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as bool,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeviceCheckResponseImplToJson(
        _$DeviceCheckResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String,
      isActive: json['isActive'] as bool,
      activatedAt: json['activatedAt'] == null
          ? null
          : DateTime.parse(json['activatedAt'] as String),
      equipment: Equipment.fromJson(json['equipment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'activatedAt': instance.activatedAt?.toIso8601String(),
      'equipment': instance.equipment,
    };

_$EquipmentImpl _$$EquipmentImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentImpl(
      id: json['id'] as String,
      headUnitSn: json['headUnitSn'] as String,
      deviceId: json['deviceId'] as String,
      serialNumber: json['serialNumber'] as String,
    );

Map<String, dynamic> _$$EquipmentImplToJson(_$EquipmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'headUnitSn': instance.headUnitSn,
      'deviceId': instance.deviceId,
      'serialNumber': instance.serialNumber,
    };
