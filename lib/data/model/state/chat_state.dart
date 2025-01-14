import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mining_monitoring/data/model/template_message_entity.dart';
import '../websocket_message_entity.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<WebsocketMessageEntity> messages,
    @Default([]) List<TemplateMessageDataEntity> templateMessages,
    @Default(false) bool isLoading,
    @Default(false) bool isDialogOpen,
    @Default(false) bool isMessageFullscreen,
    @Default(false) bool hasReachedEnd,
    @Default(1) int currentPage,
    String? error,
  }) = _ChatState;
}
