import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/constants/endpoints.dart';
import 'package:mining_monitoring/data/model/responses/check_device_id_response_entity.dart';
import 'package:mining_monitoring/data/model/responses/error_response_entity.dart';


@injectable
class DeviceRegisRepository {
  DeviceRegisRepository(this._dio);
  final Dio _dio;

  Future<dynamic> checkDeviceId(String deviceId) async {
    try {
      Response response = await _dio.get("/equipments/devices/${deviceId}");
      print(response.data.toString());

      if (response.statusCode == 200) {
        return CheckDeviceIdResponseEntity.fromJson(response.data);
      } else {
        return CheckDeviceIdResponseEntity.fromJson(response.data);
      }
    } on DioException catch (e) {
      return ErrorResponseEntity.fromJson(e.response?.data);
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

      return CheckDeviceIdResponseEntity.fromJson(response.data);
    } on DioException catch (e) {
      return ErrorResponseEntity.fromJson(e.response?.data);
    }
  }
}