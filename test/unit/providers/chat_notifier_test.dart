import 'package:flutter_test/flutter_test.dart';
import 'package:mining_monitoring/data/model/message_list_response_entity.dart';
import 'package:mining_monitoring/data/model/template_message_entity.dart';
import 'package:mining_monitoring/data/model/websocket_message_entity.dart';
import 'package:mining_monitoring/data/repository/message_respository.dart';
import 'package:mining_monitoring/data/store/user_store.dart';
import 'package:mining_monitoring/di/providers/chat_provider.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';
import 'package:centrifuge/centrifuge.dart';
import 'package:riverpod/riverpod.dart';

import 'chat_notifier_test.mocks.dart';

@GenerateMocks([
  MessageRespository,
  Client,
  Subscription,
  GetUserStoreHelper
])
void main() {
  late MockMessageRespository mockMessageRepository;
  late MockClient mockCentrifugeClient;
  late MockSubscription mockSubscription;
  late MockGetUserStoreHelper mockUserStore;
  late ProviderContainer container;

  setUp(() {
    mockMessageRepository = MockMessageRespository();
    mockCentrifugeClient = MockClient();
    mockSubscription = MockSubscription();
    mockUserStore = MockGetUserStoreHelper();

    // Setup provider container with overrides
    container = ProviderContainer(
      overrides: [
        messageRepositoryProvider.overrideWithValue(mockMessageRepository),
        centrifugeClientProvider.overrideWithValue(mockCentrifugeClient),
      ],
    );

    // Setup mock behaviors
    when(mockCentrifugeClient.getSubscription("1"))
        .thenReturn(mockSubscription);
    when(mockSubscription.subscribe())
        .thenAnswer((_) async => {});
    when(mockCentrifugeClient.connect())
        .thenAnswer((_) async => {});
  });

  tearDown(() {
    container.dispose();
  });

  group('ChatNotifier Tests', () {
    test('initial state is correct', () {
      final chatNotifier = container.read(chatNotifierProvider.notifier);
      final state = container.read(chatNotifierProvider);

      expect(state.messages, isEmpty);
      expect(state.isLoading, false);
      expect(state.error, null);
    });

    test('sendMessage success scenario', () async {
      final successResponse = MessageListResponseEntity(
        code: 200,
        status: true,
        message: "TEST",
        count: 1,
        page: 1,
        total: 1,
        data: [
          WebsocketMessageEntity(
            id: "1",
            message: "TEST",
            updatedAt: DateTime.now().toString(),
            createdAt: DateTime.now().toString(),
            fleetId: "1",
            equipmentId: "TR-TEST",
            equipmentCode: "TR-TEST",
            deviceType: "Mobile",
            categoryName: "TEST",
            categoryId: "1",
            equipmentSiteId: "TEST",
            isRead: true,
            senderName: "TEST",
            senderNik: "TEST"
          )
        ]
      );

      when(mockMessageRepository.sendMessage(
        equipmentId: "1",
        message:  "1",
        categoryId:  "1",
      )).thenAnswer((_) async => successResponse);

      when(mockMessageRepository.getAllMessage(
        page:  1,
        limit: 1,
        sort:  "desc",
        equipmentId:  "1",
      )).thenAnswer((_) async => successResponse);

      final chatNotifier = container.read(chatNotifierProvider.notifier);
      await chatNotifier.sendMessage("1",equipmentId: "1", categoryId: "1");

      verify(mockMessageRepository.sendMessage(
        equipmentId:  "1",
        message: "1",
        categoryId:  "1",
      )).called(1);

      final state = container.read(chatNotifierProvider);
      expect(state.error, null);
    });

    test('getAllChat success scenario', () async {
      final successResponse = MessageListResponseEntity(
          code: 200,
          status: true,
          message: "TEST",
          count: 1,
          page: 1,
          total: 1,
          data: [
            WebsocketMessageEntity(
                id: "1",
                message: "TEST",
                updatedAt: DateTime.now().toString(),
                createdAt: DateTime.now().toString(),
                fleetId: "1",
                equipmentId: "TR-TEST",
                equipmentCode: "TR-TEST",
                deviceType: "Mobile",
                categoryName: "TEST",
                categoryId: "1",
                equipmentSiteId: "TEST",
                isRead: true,
                senderName: "TEST",
                senderNik: "TEST"
            )
          ]
      );

      when(mockMessageRepository.getAllMessage(
        page:  1,
        limit: 1,
        sort:  "desc",
        equipmentId:  "1",
      )).thenAnswer((_) async => successResponse);

      final chatNotifier = container.read(chatNotifierProvider.notifier);
      await chatNotifier.getAllChat(limit: 1,sort: "desc",equipmentId: "1");

      verify(mockMessageRepository.getAllMessage(
        page: 1,
        limit: 1,
        sort:  "desc",
        equipmentId:  "1",
      )).called(1);

      final state = container.read(chatNotifierProvider);
      expect(state.isLoading, false);
      expect(state.error, null);
    });

    test('getTemplateMessage success scenario', () async {
      final successResponse = TemplateMessageEntity(
          code: 200,
          status: true,
          message: "TEST",
          count: 1,
          page: 1,
          total: 1,
          data: [
            TemplateMessageDataEntity(
                id: "1",
                name: "TEST",
                updatedAt: DateTime.now().toString(),
                createdAt: DateTime.now().toString(),
                isActive: true,
                isForDispatch: true,
                isForOperator: true,
                isNotifScheduler: true,
                templateMessageOperator: "TR-TEST",
                templateMessageDispatch: "TR-TEST",
                categoryName: "TEST",
                categoryId: "1",
            )
          ]
      );

      when(mockMessageRepository.getTemplateMessage(
        limit: 1,
      )).thenAnswer((_) async => successResponse);

      final chatNotifier = container.read(chatNotifierProvider.notifier);
      await chatNotifier.getTemplateMessage(limit: 1);

      verify(mockMessageRepository.getTemplateMessage(
        limit: 1,
      )).called(1);

      final state = container.read(chatNotifierProvider);
      expect(state.templateMessages.first.name, "TEST" );
      expect(state.error, null);
    });

    test('error handling in sendMessage', () async {
      when(mockMessageRepository.sendMessage(
        equipmentId:  "1",
        message:  "1",
        categoryId:  "1",
      )).thenThrow(Exception('Network error'));

      final chatNotifier = container.read(chatNotifierProvider.notifier);
      await chatNotifier.sendMessage('1');

      final state = container.read(chatNotifierProvider);
      expect(state.error, 'Failed to send message');
    });
  });
}