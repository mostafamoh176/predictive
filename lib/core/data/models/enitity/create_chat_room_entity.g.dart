// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chat_room_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateChatRoomEntity _$CreateChatRoomEntityFromJson(
        Map<String, dynamic> json) =>
    CreateChatRoomEntity(
      room_type: json['room_type'] as String?,
      room_user_id: (json['room_user_id'] as num?)?.toInt(),
      room_type_id: (json['room_type_id'] as num?)?.toInt(),
      order_chat_type: json['order_chat_type'] as String?,
    );

Map<String, dynamic> _$CreateChatRoomEntityToJson(
        CreateChatRoomEntity instance) =>
    <String, dynamic>{
      'room_type': instance.room_type,
      'room_user_id': instance.room_user_id,
      'room_type_id': instance.room_type_id,
      'order_chat_type': instance.order_chat_type,
    };
