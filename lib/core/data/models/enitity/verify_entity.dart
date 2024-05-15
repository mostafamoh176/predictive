import 'package:json_annotation/json_annotation.dart';

import '../base_entity.dart';
part 'verify_entity.g.dart';
@JsonSerializable()
class VerifyEntity extends BaseEntity {
  String? email;
  String? token;

  VerifyEntity({required this.token, required this.email});
  factory VerifyEntity.fromJson(Map<String, dynamic> json) => _$VerifyEntityFromJson(json);

  @override
  fromJson(Map<String, dynamic> json)=> _$VerifyEntityFromJson(json);

  @override
  Map<String, dynamic> toJson()=> _$VerifyEntityToJson(this);
}



