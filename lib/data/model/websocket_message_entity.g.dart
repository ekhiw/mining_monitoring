// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'websocket_message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebsocketMessageEntityImpl _$$WebsocketMessageEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$WebsocketMessageEntityImpl(
      id: json['id'] as String,
      equipmentId: json['equipment_id'] as String,
      senderNik: json['sender_nik'] as String,
      isRead: json['is_read'] as bool,
      message: json['message'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      senderName: json['sender_name'] as String,
      deviceType: json['device_type'] as String,
      categoryId: json['category_id'] as String,
      equipmentCode: json['equipment_code'] as String,
      fleetId: json['fleet_id'],
      equipmentSiteId: json['equipment_site_id'] as String,
      categoryName: json['category_name'] as String,
    );

Map<String, dynamic> _$$WebsocketMessageEntityImplToJson(
        _$WebsocketMessageEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipment_id': instance.equipmentId,
      'sender_nik': instance.senderNik,
      'is_read': instance.isRead,
      'message': instance.message,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'sender_name': instance.senderName,
      'device_type': instance.deviceType,
      'category_id': instance.categoryId,
      'equipment_code': instance.equipmentCode,
      'fleet_id': instance.fleetId,
      'equipment_site_id': instance.equipmentSiteId,
      'category_name': instance.categoryName,
    };
