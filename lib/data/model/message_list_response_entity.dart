import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_monitoring/data/model/websocket_message_entity.dart';

part 'message_list_response_entity.freezed.dart';

part 'message_list_response_entity.g.dart';

@unfreezed
class MessageListResponseEntity with _$MessageListResponseEntity {
  factory MessageListResponseEntity({
    required int code,
    required bool status,
    required String message,
    required int page,
    required int count,
    required int total,
    required List<WebsocketMessageEntity> data,
  }) = _MessageListResponseEntity;

  factory MessageListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageListResponseEntityFromJson(json);
}
