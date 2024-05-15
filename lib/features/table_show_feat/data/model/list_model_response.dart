import 'package:json_annotation/json_annotation.dart';

part 'list_model_response.g.dart';

@JsonSerializable()
class ListOrderModel{
  @JsonKey(name: "data")
  final DataResponse? orderList;
  final StatusModel? status;
  final String? message;
  ListOrderModel({required this.status,required this.message,required this.orderList});
  factory ListOrderModel.fromJson(Map<String,dynamic>Json)=>_$ListOrderModelFromJson(Json);
  Map<String,dynamic> toJson()=>_$ListOrderModelToJson(this);
}



@JsonSerializable()
class StatusModel{
  final String? msg;
  StatusModel({required this.msg});
  factory StatusModel.fromJson(Map<String,dynamic>Json)=>_$StatusModelFromJson(Json);
  Map<String,dynamic> toJson()=>_$StatusModelToJson(this);
}

@JsonSerializable()
class DataResponse{

  late  List<OrderObjectModel>? orders;
  DataResponse({required this.orders});
  factory DataResponse.fromJson(Map<String,dynamic>Json)=>_$DataResponseFromJson(Json);
  Map<String,dynamic> toJson()=>_$DataResponseToJson(this);
}
@JsonSerializable()
class OrderObjectModel{

  final String? symbol;
  final String? type;
  final String? side;
  final double? quantity;
  final int? creation_time;
  final double? price;
  OrderObjectModel({required this.symbol,required this.type,required this.creation_time,required this.price,required this.quantity,required this.side});
  factory OrderObjectModel.fromJson(Map<String,dynamic>Json)=>_$OrderObjectModelFromJson(Json);
  Map<String,dynamic> toJson()=>_$OrderObjectModelToJson(this);
}
