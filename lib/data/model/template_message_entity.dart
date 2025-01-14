import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_message_entity.freezed.dart';

part 'template_message_entity.g.dart';

@unfreezed
class TemplateMessageEntity with _$TemplateMessageEntity {
  factory TemplateMessageEntity({
    required int code,
    required bool status,
    required String message,
    required int page,
    required int count,
    required int total,
    required List<TemplateMessageDataEntity> data,
  }) = _TemplateMessageEntity;

  factory TemplateMessageEntity.fromJson(Map<String, dynamic> json) =>
      _$TemplateMessageEntityFromJson(json);
}

@unfreezed
class TemplateMessageDataEntity with _$TemplateMessageDataEntity {
  factory TemplateMessageDataEntity({
    required String id,
    required String name,
    @JsonKey(name: 'category_id') required String categoryId,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'is_for_operator') required bool isForOperator,
    @JsonKey(name: 'is_for_dispatch') required bool isForDispatch,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'is_notif_scheduler') required bool isNotifScheduler,
    @JsonKey(name: 'template_message_operator')
    required String templateMessageOperator,
    @JsonKey(name: 'template_message_dispatch')
    required String templateMessageDispatch,
  }) = _TemplateMessageDataEntity;

  factory TemplateMessageDataEntity.fromJson(Map<String, dynamic> json) =>
      _$TemplateMessageDataEntityFromJson(json);
}
