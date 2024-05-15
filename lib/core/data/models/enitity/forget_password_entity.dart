import 'package:json_annotation/json_annotation.dart';

import '../base_entity.dart';
part 'forget_password_entity.g.dart';
@JsonSerializable()
class ForgetPasswordEntity extends BaseEntity {
  String? email;


  ForgetPasswordEntity({required this.email});
  factory ForgetPasswordEntity.fromJson(Map<String, dynamic> json) => _$ForgetPasswordEntityFromJson(json);

  @override
  fromJson(Map<String, dynamic> json)=> _$ForgetPasswordEntityFromJson(json);

  @override
  Map<String, dynamic> toJson()=> _$ForgetPasswordEntityToJson(this);
}



