import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'device_regis_response.freezed.dart';
part 'device_regis_response.g.dart';

@freezed
class DeviceRegisResponse with _$DeviceRegisResponse {
  factory DeviceRegisResponse({
    required int code,
    required bool status,
    required String message,
    required Data? data,
  }) = _DeviceRegisResponse;

  factory DeviceRegisResponse.fromJson(Map<String, dynamic> json) => _$DeviceRegisResponseFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    required String id,
    required bool is_active,
    DateTime? activated_at,
    required DateTime created_at,
    required DateTime updated_at,
    required String head_unit_sn,
    String? equipment,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
