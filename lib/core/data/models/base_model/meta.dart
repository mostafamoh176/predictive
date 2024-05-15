import 'package:json_annotation/json_annotation.dart';
part 'meta.g.dart';

@JsonSerializable()
class Meta {
  int? current_page;
  int? from;
  int? to;
  int? pages;
  dynamic per_page;
  int? total;

  Meta({
    this.current_page,
    this.from,
    this.to,
    this.pages,
    this.per_page,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
