import 'package:json_annotation/json_annotation.dart';
import 'list_model_response.dart';
part 'portfolio_model_response.g.dart';

@JsonSerializable()
class PortfolioModel{
  @JsonKey(name: "data")
  final PortfolioDataModel? portfolio;
  final StatusModel? status;
  final String? message;
  PortfolioModel({required this.status,required this.message,required this.portfolio});
  factory PortfolioModel.fromJson(Map<String,dynamic>Json)=>_$PortfolioModelFromJson(Json);
  Map<String,dynamic> toJson()=>_$PortfolioModelToJson(this);
}


@JsonSerializable()
class PortfolioDataModel{
  final PortfolioObjectModel? portfolio;
  PortfolioDataModel({required this.portfolio});
  factory PortfolioDataModel.fromJson(Map<String,dynamic>Json)=>_$PortfolioDataModelFromJson(Json);
  Map<String,dynamic> toJson()=>_$PortfolioDataModelToJson(this);
}
@JsonSerializable()
class PortfolioObjectModel{
  final double? balance;
  final double? profit;
  final int? profit_percentage;
  final int? assets;
  PortfolioObjectModel({required this.balance,required this.profit_percentage,required this.profit,required this.assets});
  factory PortfolioObjectModel.fromJson(Map<String,dynamic>Json)=>_$PortfolioObjectModelFromJson(Json);
  Map<String,dynamic> toJson()=>_$PortfolioObjectModelToJson(this);
}

