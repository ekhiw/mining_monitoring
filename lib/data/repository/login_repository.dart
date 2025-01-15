import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/constants/endpoints.dart';
import 'package:mining_monitoring/data/model/responses/error_response_entity.dart';
import 'package:mining_monitoring/data/model/responses/user_response_entity.dart';

@injectable
class LoginRepository {
  LoginRepository(this._dio);
  final Dio _dio;

  Future<dynamic> login(String nik) async {
    try {
      // TODO change to request model
      final response = await _dio.post(Endpoints.tabletLogin, data: {
        "unit_id": 'e676e18f12',
        "nik": nik,
        "shift_id": '048C-NS',
        "login_type": 1
      });

      if (response.statusCode == 200) {
        return UserResponseEntity.fromJson(response.data);
      } else {
        return UserResponseEntity.fromJson(response.data);
      }
    } on DioException catch (e) {
      return ErrorResponseEntity.fromJson(e.response?.data);
    }
  }
}