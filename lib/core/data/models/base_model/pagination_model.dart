import 'package:json_annotation/json_annotation.dart';
import 'links.dart';
import 'meta.dart';
part 'pagination_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PaginationModel {
  Links? links;
  Meta? meta;

  PaginationModel({
    this.links,
    this.meta,
  });

  factory PaginationModel.fromJson(Map<String, dynamic> json) => _$PaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationModelToJson(this);
}


