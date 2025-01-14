import 'package:freezed_annotation/freezed_annotation.dart';

part 'websocket_message_entity.freezed.dart';

part 'websocket_message_entity.g.dart';

@unfreezed
class WebsocketMessageEntity with _$WebsocketMessageEntity {
  factory WebsocketMessageEntity({
    required String id,
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
    @JsonKey(name: 'category_name') required String categoryName,
  }) = _WebsocketMessageEntity;

  factory WebsocketMessageEntity.fromJson(Map<String, dynamic> json) =>
      _$WebsocketMessageEntityFromJson(json);
}
