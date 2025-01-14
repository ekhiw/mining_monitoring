import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/constants/endpoints.dart';
import 'package:mining_monitoring/data/model/message_list_response_entity.dart';
import 'package:mining_monitoring/data/model/template_message_entity.dart';

import '../model/responses/api_error_response.dart';

@injectable
class MessageRespository {
  MessageRespository(this._dio);
  final Dio _dio;

  Future<dynamic> getAllMessage({ int? page, int? limit, String? sort, required String equipmentId,}) async {
    try {
      final response = await _dio.get(
        Endpoints.getAllMessages,
        queryParameters: {
          'page': page,
          'limit': limit,
          'sort': 'created_at,desc',
          'equipment_id': equipmentId,
        },
      );

      if (response.statusCode == 200) {
        return MessageListResponseEntity.fromJson(response.data);
      } else {
        return MessageListResponseEntity.fromJson(response.data);
      }
    } on DioException catch (e) {
      print("EKHIW ERROR ${e}");
      return ApiErrorResponse.fromJson(e.response?.data);
    }
  }

  Future<dynamic> getTemplateMessage({int? limit }) async {
    try {
      final response = await _dio.get(
        Endpoints.getTemplateMessages,
        queryParameters: {
          'limit': limit,
        },
      );

      if (response.statusCode == 200) {
        return TemplateMessageEntity.fromJson(response.data);
      } else {
        return TemplateMessageEntity.fromJson(response.data);
      }
    } on DioException catch (e) {
      print("EKHIW ERROR ${e}");
      return ApiErrorResponse.fromJson(e.response?.data);
    }

  }

  Future<dynamic> sendMessage({
    required String equipmentId,
    required String message,
    String? categoryId,
  }) async {
    try {
      final response = await _dio.post(
        Endpoints.sendMessage,
        data: {
          "equipment_id": equipmentId,
          "message": message,
          "device_type": "Mobile",
          "category_id": categoryId ?? "1",
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return MessageListResponseEntity.fromJson(response.data);
      } else {
        return MessageListResponseEntity.fromJson(response.data);
      }
    } on DioException catch (e) {
      print("EKHIW ERROR ${e}");
      return ApiErrorResponse.fromJson(e.response?.data);
    }
  }
}