import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

import '../../constants/endpoints.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();

  dio.options
    ..baseUrl = Endpoints.baseUrl
    ..connectTimeout = const Duration(milliseconds: Endpoints.connectionTimeout)
    ..receiveTimeout = const Duration(milliseconds: Endpoints.receiveTimeout);

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        return handler.next(options);
      },
    ),
  );

  return dio;
});
