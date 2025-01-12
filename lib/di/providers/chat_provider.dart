import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:mining_monitoring/constants/endpoints.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:centrifuge/centrifuge.dart';

import '../../data/model/chat_message.dart';
import '../../data/model/chat_state.dart';

part 'chat_provider.g.dart';

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
  Subscription? _subscription;

  @override
  ChatState build() {
    _client = ref.watch(centrifugeClientProvider);
    ref.onDispose(() {
      _dispose();
    });
    return const ChatState();
  }

  void initConnection(String channel,ValueSetter<String> callback) {
    _initializeSubscription(channel,callback);

  }

  Future<void> _initializeSubscription(String channel,ValueSetter<String> onConnect) async {
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
        onConnect(data);
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

  void _addMessage(ChatMessage message) {
    state = state.copyWith(
      messages: [...state.messages, message],
    );
  }

  void disconnect() {
    _client.disconnect();
    _subscription?.unsubscribe();
  }

  Future<void> sendMessage(String text) async {
    if (_subscription == null) return;

    final message = ChatMessage(
      message: text,
      sender_nik: 'User',
      created_at: DateTime.now(),
    );

    try {
      final data = utf8.encode(jsonEncode({'input': message}));
      await _subscription!.publish(data);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  void _dispose() {
    _subscription?.unsubscribe();
  }
}