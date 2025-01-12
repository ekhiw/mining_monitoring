import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/constants/endpoints.dart';

import '../model/responses/api_error_response.dart';

@injectable
class LoginRepository {
  LoginRepository(this._dio);
  final Dio _dio;

  Future<dynamic> login(String nik) async {
    try {
      final response = await _dio.get("/equipments/devices/${nik}");

      return response;
    } on DioException catch (e) {
      return ApiErrorResponse.fromJson(e.response?.data);
    }
  }
}