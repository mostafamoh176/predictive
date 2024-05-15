// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchEntity _$SearchEntityFromJson(Map<String, dynamic> json) => SearchEntity(
      type: json['type'] as String?,
      text: json['text'] as String?,
      text1: json['text1'] as String?,
    );

Map<String, dynamic> _$SearchEntityToJson(SearchEntity instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'text1': instance.text1,
    };
