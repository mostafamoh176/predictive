// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAddressEntity _$AddAddressEntityFromJson(Map<String, dynamic> json) =>
    AddAddressEntity(
      city_id: json['city_id'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      street: json['street'] as String?,
      building: json['building'] as String?,
      intercom: json['intercom'] as String?,
      floor: json['floor'] as String?,
      zipcode: json['zipcode'] as String?,
      detailed_address: json['detailed_address'] as String?,
    );

Map<String, dynamic> _$AddAddressEntityToJson(AddAddressEntity instance) =>
    <String, dynamic>{
      'city_id': instance.city_id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'street': instance.street,
      'building': instance.building,
      'intercom': instance.intercom,
      'floor': instance.floor,
      'zipcode': instance.zipcode,
      'detailed_address': instance.detailed_address,
    };
