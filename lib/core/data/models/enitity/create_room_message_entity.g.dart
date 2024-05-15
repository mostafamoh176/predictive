// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_room_message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRoomMessageEntity _$CreateRoomMessageEntityFromJson(
        Map<String, dynamic> json) =>
    CreateRoomMessageEntity(
      (json['room_id'] as num?)?.toInt(),
      json['message'] as Map<String, dynamic>?,
      json['message_type'] as String?,
    );

Map<String, dynamic> _$CreateRoomMessageEntityToJson(
        CreateRoomMessageEntity instance) =>
    <String, dynamic>{
      'room_id': instance.room_id,
      'message': instance.message,
      'message_type': instance.message_type,
    };
