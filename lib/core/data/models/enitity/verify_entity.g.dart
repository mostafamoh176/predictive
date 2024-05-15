// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyEntity _$VerifyEntityFromJson(Map<String, dynamic> json) => VerifyEntity(
      token: json['token'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$VerifyEntityToJson(VerifyEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'token': instance.token,
    };
