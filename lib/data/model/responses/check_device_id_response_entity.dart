import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_device_id_response_entity.freezed.dart';

part 'check_device_id_response_entity.g.dart';

@freezed
class CheckDeviceIdResponseEntity with _$CheckDeviceIdResponseEntity {
  factory CheckDeviceIdResponseEntity({
    required int code,
    required bool status,
    required String message,
    required CheckDeviceIdResponseDataEntity data,
  }) = _CheckDeviceIdResponseEntity;

  factory CheckDeviceIdResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CheckDeviceIdResponseEntityFromJson(json);
}

@freezed
class CheckDeviceIdResponseDataEntity with _$CheckDeviceIdResponseDataEntity {
  factory CheckDeviceIdResponseDataEntity({
    required String id,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'activated_at') String? activatedAt,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'head_unit_sn') required String headUnitSn,
    required dynamic equipment,
  }) = _CheckDeviceIdResponseDataEntity;

  factory CheckDeviceIdResponseDataEntity.fromJson(Map<String, dynamic> json) =>
      _$CheckDeviceIdResponseDataEntityFromJson(json);
}
