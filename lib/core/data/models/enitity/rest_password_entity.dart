import 'package:json_annotation/json_annotation.dart';

import '../base_entity.dart';
part 'rest_password_entity.g.dart';
@JsonSerializable()
class RestPasswordEntity extends BaseEntity {
  String? password;
  String? password_confirmation;

  RestPasswordEntity({required this.password_confirmation, required this.password});
  factory RestPasswordEntity.fromJson(Map<String, dynamic> json) => _$RestPasswordEntityFromJson(json);

  @override
  fromJson(Map<String, dynamic> json)=> _$RestPasswordEntityFromJson(json);

  @override
  Map<String, dynamic> toJson()=> _$RestPasswordEntityToJson(this);
}



