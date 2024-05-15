import 'package:json_annotation/json_annotation.dart';
import '../base_entity.dart';

part 'create_room_message_entity.g.dart';

@JsonSerializable()
class CreateRoomMessageEntity extends BaseEntity {
  int? room_id;
  Map<String,dynamic>? message;
  String? message_type;


  CreateRoomMessageEntity(this.room_id, this.message, this.message_type);

  factory CreateRoomMessageEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateRoomMessageEntityFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$CreateRoomMessageEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateRoomMessageEntityToJson(this);
}
