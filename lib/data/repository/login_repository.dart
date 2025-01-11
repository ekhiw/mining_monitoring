import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginRepository {
  LoginRepository(this._dio);
  final Dio _dio;

  Future<bool> login(String nik) async {
    try {
      final response = await _dio.get("");
      
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      throw Exception('Login failed: ${e.toString()}');
    }
  }
}