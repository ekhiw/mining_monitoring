// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_list_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageListResponseEntityImpl _$$MessageListResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageListResponseEntityImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as bool,
      message: json['message'] as String,
      page: (json['page'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map(
              (e) => WebsocketMessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MessageListResponseEntityImplToJson(
        _$MessageListResponseEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'page': instance.page,
      'count': instance.count,
      'total': instance.total,
      'data': instance.data,
    };
