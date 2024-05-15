import 'dart:io';


import 'package:dio/dio.dart';

import '../base_entity.dart';

class SignUpEntity extends BaseEntity {
  String? name;
  String? email;
  String? password;
  String? password_confirmation;
  String? birthdate;
  String? timezone;
  String? gender;
  File? image;
  String? mobile;
  String? fcmToken;
  String? lang_id;
  String? currency_id;
  String? city_id;
  String? latitude;
  String? longitude;
  String? street;
  String? building;
  String? intercom;
  String? floor;
  String? zipcode;
  String? detailed_address;
  String? nationality_id;

  SignUpEntity({
    required this.name,
    required this.email,
    required this.password,
    required this.password_confirmation,
    required this.birthdate,
    required this.timezone,
    required this.gender,
    required this.image,
    required this.mobile,
    required this.fcmToken,
    required this.lang_id,
    required this.currency_id,
    required this.city_id,
    required this.latitude,
    required this.longitude,
    required this.street,
    required this.building,
    required this.intercom,
    required this.floor,
    required this.zipcode,
    required this.detailed_address,
    required this.nationality_id,
  });

  @override
  fromJson(Map<String, dynamic> json) {}

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
        'mobile': mobile,
        'birthdate': birthdate,
        'fcmToken': fcmToken,
        'lang_id': lang_id,
        'currency_id': currency_id,
        'city_id': city_id,
        'latitude': latitude,
        'longitude': longitude,
        'street': street,
        'building': building,
        'intercom': intercom,
        'floor': floor,
        'zipcode': zipcode,
        'detailed_address': detailed_address,
        'password_confirmation': password_confirmation,
        'gender': gender,
        if (image != null)
          'image': MultipartFile.fromFileSync(
            image?.path ?? '',
            filename: image?.path.split('/').last,
          ),
        'timezone': timezone,
        'nationality_id': nationality_id,
      };
}
