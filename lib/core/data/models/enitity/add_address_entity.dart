import 'package:json_annotation/json_annotation.dart';

import '../base_entity.dart';
part 'add_address_entity.g.dart';

@JsonSerializable()
class AddAddressEntity extends BaseEntity {
  String? city_id;
  String? latitude;
  String? longitude;
  String? street;
  String? building;
  String? intercom;
  String? floor;
  String? zipcode;
  String? detailed_address;

  AddAddressEntity({
    this.city_id,
    this.latitude,
    this.longitude,
    this.street,
    this.building,
    this.intercom,
    this.floor,
    this.zipcode,
    this.detailed_address,
  });

  factory AddAddressEntity.fromJson(Map<String, dynamic> json) => _$AddAddressEntityFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$AddAddressEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddAddressEntityToJson(this);
}
