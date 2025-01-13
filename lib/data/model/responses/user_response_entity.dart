import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_entity.freezed.dart';

part 'user_response_entity.g.dart';

@unfreezed
class UserResponseEntity with _$UserResponseEntity {
  factory UserResponseEntity({
    required int code,
    required bool status,
    required String message,
    required UserResponseDataEntity data,
  }) = _UserResponseEntity;

  factory UserResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UserResponseEntityFromJson(json);
}

@unfreezed
class UserResponseDataEntity with _$UserResponseDataEntity {
  factory UserResponseDataEntity({
    required String id,
    @JsonKey(name: 'role_name') required String roleName,
    @JsonKey(name: 'department_id') required String departmentId,
    @JsonKey(name: 'department_name') required String departmentName,
    @JsonKey(name: 'site_id') required String siteId,
    @JsonKey(name: 'site_name') required String siteName,
    required String nik,
    required String name,
    required String email,
    required String phone,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'unit_id') required String unitId,
    @JsonKey(name: 'unit_code') required String unitCode,
    @JsonKey(name: 'unit_type_id') required String unitTypeId,
    @JsonKey(name: 'login_at') required String loginAt,
  }) = _UserResponseDataEntity;

  factory UserResponseDataEntity.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDataEntityFromJson(json);
}
