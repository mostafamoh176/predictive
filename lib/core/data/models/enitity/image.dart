import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class ImageModel {
  @JsonKey(name: '16px')
  String? s16px;
  @JsonKey(name: '32px')
  String? s32px;
  @JsonKey(name: '64px')
  String? s64px;
  @JsonKey(name: '128px')
  String? s128px;
  @JsonKey(name: '256px')
  String? s256px;
  @JsonKey(name: '512px')
  String? s512px;

  ImageModel({
    this.s16px,
    this.s32px,
    this.s64px,
    this.s128px,
    this.s256px,
    this.s512px,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
