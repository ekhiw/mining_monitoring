import 'package:freezed_annotation/freezed_annotation.dart';

part 'websocket_message_entity.freezed.dart';

part 'websocket_message_entity.g.dart';

@unfreezed
class WebsocketMessageEntity with _$WebsocketMessageEntity {
  factory WebsocketMessageEntity({
    required String id,
    @JsonKey(name: 'equipment_id') String? equipmentId,
    @JsonKey(name: 'sender_nik') String? senderNik,
    @JsonKey(name: 'is_read') bool? isRead,
    String? message,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'sender_name') String? senderName,
    @JsonKey(name: 'device_type') String? deviceType,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'equipment_code') String? equipmentCode,
    @JsonKey(name: 'fleet_id') dynamic fleetId,
    @JsonKey(name: 'equipment_site_id') String? equipmentSiteId,
    @JsonKey(name: 'category_name') String? categoryName,
  }) = _WebsocketMessageEntity;

  factory WebsocketMessageEntity.fromJson(Map<String, dynamic> json) =>
      _$WebsocketMessageEntityFromJson(json);
}
