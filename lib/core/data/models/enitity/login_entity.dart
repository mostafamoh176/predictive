import 'package:json_annotation/json_annotation.dart';

import '../base_entity.dart';

part 'login_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginEntity extends BaseEntity {
  String? email;
  String? password;

  LoginEntity({required this.email, required this.password});
  factory LoginEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginEntityFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$LoginEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginEntityToJson(this);
}
