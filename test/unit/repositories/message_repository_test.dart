import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mining_monitoring/data/model/responses/error_response_entity.dart';
import 'package:mining_monitoring/data/model/template_message_entity.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mining_monitoring/data/repository/message_respository.dart';
import 'package:mining_monitoring/data/model/message_list_response_entity.dart';

// Generate mock class
@GenerateMocks([Dio])
import 'message_repository_test.mocks.dart';

void main() {
  late MockDio mockDio;
  late MessageRespository repository;

  setUp(() {
    mockDio = MockDio();
    repository = MessageRespository(mockDio);
  });

  group('MessageRepository', () {
    test('getAllMessage returns MessageListResponseEntity on success', () async {

      final responseData = {
        "code": 200,
        "status": true,
        "message": "Message found successfully",
        "page": 1,
        "count": 10,
        "total": 31,
        "data": [
          {
            "id": "02c19a6001",
            "equipment_id": "e676e18f12",
            "sender_nik": "12345",
            "is_read": false,
            "message": "TEST",
            "created_at": "2025-01-14T18:57:09.143182Z",
            "updated_at": "2025-01-14T18:57:09.143182Z",
            "sender_name": "",
            "device_type": "Mobile",
            "category_id": "1",
            "equipment_code": "TR-TEST01",
            "fleet_id": null,
            "equipment_site_id": "001D",
            "category_name": "Urgent"
          },
        ]
      };

      when(mockDio.get(
        any,
        queryParameters: anyNamed('queryParameters'),
      )).thenAnswer((_) async => Response(
        data: responseData,
        statusCode: 200,
        requestOptions: RequestOptions(),
      ));

      final result = await repository.getAllMessage(
        equipmentId: 'e676e18f12',
        page: 1,
        limit: 10,
      );

      expect(result, isA<MessageListResponseEntity>());
      expect(result.data.first.message, "TEST");
      verify(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .called(1);
    });

    test('getAllMessage handles error response', () async {
      when(mockDio.get(
        any,
        queryParameters: anyNamed('queryParameters'),
      )).thenThrow(DioException(
        requestOptions: RequestOptions(),
        response: Response(
          data: {
            'code': 404,
            'status': false,
            'message': 'Not Found',
            'data': ""
          },
          statusCode: 404,
          requestOptions: RequestOptions(),
        ),
      ));

      final result = await repository.getAllMessage(
        equipmentId: 'test123',
        page: 1,
        limit: 10,
      );

      expect(result, isA<ErrorResponseEntity>());
      expect(result.message, 'Not Found');
    });

    test('getTemplateMessage return TemplateMessageEntity on success', () async {

      final responseData = {
        "code": 200,
        "status": true,
        "message": "Message found successfully",
        "page": 1,
        "count": 10,
        "total": 31,
        "data": [
          {
            "id": "test",
            "name": "TEST",
            "category_id": "2",
            "created_at": "2024-09-11T13:30:14.68173Z",
            "updated_at": "2025-01-14T09:28:14.606632Z",
            "category_name": "Warning",
            "is_for_operator": false,
            "is_for_dispatch": false,
            "is_active": false,
            "is_notif_scheduler": false,
            "template_message_operator": "",
            "template_message_dispatch": ""
          },
        ]
      };

      when(mockDio.get(
        any,
        queryParameters: anyNamed('queryParameters'),
      )).thenAnswer((_) async => Response(
        data: responseData,
        statusCode: 200,
        requestOptions: RequestOptions(),
      ));

      final result = await repository.getTemplateMessage(
        limit: 10,
      );

      expect(result, isA<TemplateMessageEntity>());
      expect(result.data.first.name, "TEST");
      verify(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .called(1);
    });

    test('getTemplateMessage handles error response', () async {
      when(mockDio.get(
        any,
        queryParameters: anyNamed('queryParameters'),
      )).thenThrow(DioException(
        requestOptions: RequestOptions(),
        response: Response(
          data: {
            'code': 404,
            'status': false,
            'message': 'Not Found',
            'data': ""
          },
          statusCode: 404,
          requestOptions: RequestOptions(),
        ),
      ));

      final result = await repository.getTemplateMessage(
        limit: 10,
      );

      expect(result, isA<ErrorResponseEntity>());
      expect(result.message, 'Not Found');
    });
  });
}