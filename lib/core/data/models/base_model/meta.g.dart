// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      current_page: (json['current_page'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      pages: (json['pages'] as num?)?.toInt(),
      per_page: json['per_page'],
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'current_page': instance.current_page,
      'from': instance.from,
      'to': instance.to,
      'pages': instance.pages,
      'per_page': instance.per_page,
      'total': instance.total,
    };
