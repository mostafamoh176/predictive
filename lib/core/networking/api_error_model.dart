import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel{
  final String? errorCode;
  final String? message;

  ApiErrorModel({required this.message,this.errorCode});
  factory ApiErrorModel.fromJson(Map<String,dynamic> json)=>_$ApiErrorModelFromJson(json);
  Map<String,dynamic> toJson()=>_$ApiErrorModelToJson(this);
}