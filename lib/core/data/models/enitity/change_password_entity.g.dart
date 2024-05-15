// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordEntity _$ChangePasswordEntityFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordEntity(
      password_confirmation: json['password_confirmation'] as String?,
      password: json['password'] as String?,
      current_password: json['current_password'] as String?,
    );

Map<String, dynamic> _$ChangePasswordEntityToJson(
        ChangePasswordEntity instance) =>
    <String, dynamic>{
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
      'current_password': instance.current_password,
    };
