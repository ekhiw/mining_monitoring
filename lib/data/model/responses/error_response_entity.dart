import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response_entity.freezed.dart';

part 'error_response_entity.g.dart';

@freezed
class ErrorResponseEntity with _$ErrorResponseEntity {
  factory ErrorResponseEntity({
    required int code,
    required bool status,
    required String message,
    required String data,
  }) = _ErrorResponseEntity;

  factory ErrorResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseEntityFromJson(json);
}
