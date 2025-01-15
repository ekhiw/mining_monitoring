import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import '../../constants/endpoints.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  final _refreshToken = 'refresh_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6IiIsInBlcm1pc3Npb25zIjpudWxsLCJ1c2VyX25hbWUiOiIiLCJzaXRlX25hbWUiOiIiLCJleHAiOjE3Mzk1NjA2ODIsImlzcyI6IjEyMzQ1In0.Fr5MbHi1lG90wioxi13SqE4QAfkqTBp1mjraxTV38QE; token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6IjI5IiwicGVybWlzc2lvbnMiOm51bGwsInVzZXJfbmFtZSI6Ikt1ZGEiLCJzaXRlX25hbWUiOiJIZWFkIE9mZmljZSBKYWthcnRhIiwiZXhwIjoxNzM3MDU1MzEwLCJpc3MiOiJLVURBMDUifQ.Sx-mjZ-PhcUU9v8eULUG1_2rfXBmzPrmuF06SyaTKRE';

  dio.options
    ..baseUrl = Endpoints.baseUrl
    ..headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    }
    ..connectTimeout = const Duration(milliseconds: Endpoints.connectionTimeout)
    ..receiveTimeout = const Duration(milliseconds: Endpoints.receiveTimeout);

  dio.interceptors.add(
    TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseMessage: true,
      ),
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers['Cookie'] = '$_refreshToken';
        return handler.next(options);
      },
    ),
  );

  return dio;
});
