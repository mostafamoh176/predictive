// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_password_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestPasswordEntity _$RestPasswordEntityFromJson(Map<String, dynamic> json) =>
    RestPasswordEntity(
      password_confirmation: json['password_confirmation'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$RestPasswordEntityToJson(RestPasswordEntity instance) =>
    <String, dynamic>{
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
    };
