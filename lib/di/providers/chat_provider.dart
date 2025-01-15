import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:mining_monitoring/constants/endpoints.dart';
import 'package:mining_monitoring/data/model/template_message_entity.dart';
import 'package:mining_monitoring/data/repository/message_respository.dart';
import 'package:mining_monitoring/di/module/network_module.dart';
import 'package:mining_monitoring/di/providers/login_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:centrifuge/centrifuge.dart';

import '../../constants/strings.dart';
import '../../data/model/message_list_response_entity.dart';
import '../../data/model/state/chat_state.dart';
import '../../data/model/websocket_message_entity.dart';
import '../component/service_locator.dart';

part 'chat_provider.g.dart';

final messageRepositoryProvider = Provider<MessageRespository>((ref) {
  return MessageRespository(ref.read(dioProvider));
});

@riverpod
Client centrifugeClient(CentrifugeClientRef ref) {
  final client = createClient(Endpoints.websocketUrl);
  ref.onDispose(() {
    client.disconnect();
  });
  return client;
}

@riverpod
class ChatNotifier extends _$ChatNotifier {
  late final Client _client;
  late final MessageRespository messageRespository;
  Subscription? _subscription;

  @override
  ChatState build() {
    _client = ref.watch(centrifugeClientProvider);
    messageRespository = ref.watch(messageRepositoryProvider);

    ref.onDispose(() {
      _dispose();
    });
    return const ChatState();
  }

  void initConnection(String channel,ValueSetter<String> callback) {
    _initializeSubscription(channel,callback);

  }

  Future<void> _initializeSubscription(String channel,ValueSetter<String> callback) async {
    // state = state.copyWith(isLoading: true);

    try {
      _client.connectStream.listen((event) {
        print("Connected to server ${event.data}");
      });

      _client.messageStream.listen((event) {
        print("EKHIW Msg: ${event.data}");
      });

      _client.errorStream.listen((event) {
        print("EKHIW ERROR STREAM ${event.error}");
      });

      await _client.connect();

      final subscription = _client.getSubscription(channel);

      subscription.publishStream
          .map<String>((e) => utf8.decode(e.data))
          .listen((data) {
        final d = json.decode(data) as Map<String, dynamic>;
        final id = d["id"].toString();
        final is_active = d["is_active"].toString();
        _addMessage(WebsocketMessageEntity.fromJson(d));
        callback(data);
      });

      subscription.joinStream.listen(print);
      subscription.leaveStream.listen(print);
      subscription.subscribeSuccessStream.listen(print);
      subscription.subscribeErrorStream.listen(print);
      subscription.unsubscribeStream.listen(print);

      _subscription = subscription;

      await _subscription?.subscribe();
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  void _addMessage(WebsocketMessageEntity message) {
    state = state.copyWith(
      messages: [...state.messages, message],
    );
  }

  void disconnect() {
    _client.disconnect();
    _subscription?.unsubscribe();
  }

  Future<void> sendMessage(String text, {String? categoryId="1", String? equipmentId="e676e18f12", bool shouldRefresh = false}) async {
    try {

      if(equipmentId == null) {
        return;
      }

      final response = await messageRespository.sendMessage(
        equipmentId: equipmentId,
        message: text,
        categoryId: categoryId,
      );

      if (response is MessageListResponseEntity) {
        if(shouldRefresh) await getAllChat(refresh: true,equipmentId: getStoreHelper.getUnitId());
        state = state.copyWith(
          error: null
        );
      } else {
        state = state.copyWith(
          error: "Failed to send message",
        );
      }
    } catch (e) {
      state = state.copyWith(
        error: "Failed to send message",
      );
    }
  }

  void setIsDialogOpen(bool isOpen) {
    state = state.copyWith(
      isDialogOpen: isOpen
    );
  }

  Future<void> getAllChat({bool refresh = false, int? limit=30,String? sort='created_at,asc', String? equipmentId=Strings.unitId}) async {

    if (equipmentId == null) {
      return;
    }

    if (refresh) {
      state = state.copyWith(
        messages: [],
        currentPage: 1,
      );
    }

    if (state.isLoading || state.hasReachedEnd) {
      return;
    }

    state = state.copyWith(
      isLoading: true
    );
    try {
      final response = await messageRespository.getAllMessage(
        page: state.currentPage,
        limit: limit,
        sort: sort,
        equipmentId: equipmentId,
      );

      if (response is MessageListResponseEntity) {
        final newMessages = response.data;
        final hasReachedEnd = newMessages.isEmpty;

        state = state.copyWith(
          messages: [...state.messages, ...newMessages],
          isLoading: false,
          currentPage: state.currentPage+1,
          error: null
        );
      } else {
        state = state.copyWith(
          isLoading: false,
          error: "Failed to load messages",
        );
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: "Failed to load messages",
      );
    }
  }

  Future<void> getTemplateMessage({int? limit = 30}) async {
    try {
      final response = await messageRespository.getTemplateMessage(
        limit: limit,
      );

      if (response is TemplateMessageEntity) {
        final templateMessage = response.data;

        state = state.copyWith(
          templateMessages: templateMessage,
          error: null,
        );
      } else {
        state = state.copyWith(
          isLoading: false,
          error: "Failed to load template messages",
        );
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: "Failed to load template messages",
      );
    }

  }

  void setMessageIsFullscreen(bool isFullscreen) {
    state = state.copyWith(
        isMessageFullscreen: isFullscreen
    );
  }

  void _dispose() {
    _subscription?.unsubscribe();
  }
}