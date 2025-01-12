import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_error_response.freezed.dart';
part 'api_error_response.g.dart';

@freezed
class ApiErrorResponse with _$ApiErrorResponse {
  factory ApiErrorResponse({
    required int code,
    required bool status,
    required String message,
    required String data,
  }) = _ApiErrorResponse;

  factory ApiErrorResponse.fromJson(Map<String, dynamic> json) => _$ApiErrorResponseFromJson(json);
}
