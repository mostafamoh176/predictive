import 'package:json_annotation/json_annotation.dart';

import '../base_entity.dart';
part 'change_password_entity.g.dart';
@JsonSerializable()
class ChangePasswordEntity extends BaseEntity {
  String? password;
  String? password_confirmation;
  String? current_password;

  ChangePasswordEntity({required this.password_confirmation, required this.password,required this.current_password});
  factory ChangePasswordEntity.fromJson(Map<String, dynamic> json) => _$ChangePasswordEntityFromJson(json);

  @override
  fromJson(Map<String, dynamic> json)=> _$ChangePasswordEntityFromJson(json);

  @override
  Map<String, dynamic> toJson()=> _$ChangePasswordEntityToJson(this);
}



