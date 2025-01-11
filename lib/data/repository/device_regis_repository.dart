import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/constants/endpoints.dart';

import '../model/api_error_response.dart';
import '../model/device_check_response.dart';
import '../model/device_regis_response.dart';

@injectable
class DeviceRegisRepository {
  DeviceRegisRepository(this._dio);
  final Dio _dio;

  Future<dynamic> checkDeviceId(String deviceId) async {
    try {
      Response response = await _dio.get("/equipments/devices/${deviceId}");

      if (response.statusCode == 200) {
        return DeviceCheckResponse.fromJson(response.data);
      } else {
        return DeviceCheckResponse.fromJson(response.data);
      }
    } on DioException catch (e) {
      return ApiErrorResponse.fromJson(e.response?.data);
    }
  }

  Future<dynamic> registerDeviceId(String deviceId) async {
    try {
      Response response = await _dio.post(
          "/equipments/devices/",
        data: {
          "id": deviceId,
          "head_unit_sn" : deviceId
        }
      );

      return DeviceRegisResponse.fromJson(response.data);
    } on DioException catch (e) {
      return ApiErrorResponse.fromJson(e.response?.data);
    }
  }
}