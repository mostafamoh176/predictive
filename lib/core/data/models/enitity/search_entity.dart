import 'package:json_annotation/json_annotation.dart';

import '../base_entity.dart';
part 'search_entity.g.dart';
@JsonSerializable()
class SearchEntity extends BaseEntity {
  String? type;
  String? text;
  String? text1;

  SearchEntity({required this.type, required this.text, this.text1});
  factory SearchEntity.fromJson(Map<String, dynamic> json) => _$SearchEntityFromJson(json);

  @override
  fromJson(Map<String, dynamic> json)=> _$SearchEntityFromJson(json);

  @override
  Map<String, dynamic> toJson()=> _$SearchEntityToJson(this);
}



