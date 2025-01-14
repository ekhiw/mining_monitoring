// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemplateMessageEntityImpl _$$TemplateMessageEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TemplateMessageEntityImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as bool,
      message: json['message'] as String,
      page: (json['page'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              TemplateMessageDataEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TemplateMessageEntityImplToJson(
        _$TemplateMessageEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'page': instance.page,
      'count': instance.count,
      'total': instance.total,
      'data': instance.data,
    };

_$TemplateMessageDataEntityImpl _$$TemplateMessageDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TemplateMessageDataEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      categoryId: json['category_id'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      categoryName: json['category_name'] as String,
      isForOperator: json['is_for_operator'] as bool,
      isForDispatch: json['is_for_dispatch'] as bool,
      isActive: json['is_active'] as bool,
      isNotifScheduler: json['is_notif_scheduler'] as bool,
      templateMessageOperator: json['template_message_operator'] as String,
      templateMessageDispatch: json['template_message_dispatch'] as String,
    );

Map<String, dynamic> _$$TemplateMessageDataEntityImplToJson(
        _$TemplateMessageDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'category_name': instance.categoryName,
      'is_for_operator': instance.isForOperator,
      'is_for_dispatch': instance.isForDispatch,
      'is_active': instance.isActive,
      'is_notif_scheduler': instance.isNotifScheduler,
      'template_message_operator': instance.templateMessageOperator,
      'template_message_dispatch': instance.templateMessageDispatch,
    };
