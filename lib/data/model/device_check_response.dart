import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_check_response.freezed.dart';
part 'device_check_response.g.dart';

@freezed
class DeviceCheckResponse with _$DeviceCheckResponse {
  const factory DeviceCheckResponse({
    required int code,
    required bool status,
    required String message,
    required Data data,
  }) = _DeviceCheckResponse;

  factory DeviceCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceCheckResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String id,
    required bool isActive,
    DateTime? activatedAt,
    required Equipment equipment,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Equipment with _$Equipment {
  const factory Equipment({
    required String id,
    required String headUnitSn,
    required String deviceId,
    required String serialNumber,
  }) = _Equipment;

  factory Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);
}
