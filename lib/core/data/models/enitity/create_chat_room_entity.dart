import 'package:json_annotation/json_annotation.dart';

import '../base_entity.dart';

part 'create_chat_room_entity.g.dart';

@JsonSerializable()
class CreateChatRoomEntity extends BaseEntity {
  String? room_type;
  int? room_user_id;
  int? room_type_id;
  String? order_chat_type;

  CreateChatRoomEntity({
    this.room_type,
    this.room_user_id,
    this.room_type_id,
    this.order_chat_type,
  });

  factory CreateChatRoomEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateChatRoomEntityFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$CreateChatRoomEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateChatRoomEntityToJson(this);
}
