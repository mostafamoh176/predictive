// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOrderModel _$ListOrderModelFromJson(Map<String, dynamic> json) =>
    ListOrderModel(
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      message: json['message'] as String?,
      orderList: json['data'] == null
          ? null
          : DataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListOrderModelToJson(ListOrderModel instance) =>
    <String, dynamic>{
      'data': instance.orderList,
      'status': instance.status,
      'message': instance.message,
    };

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) => StatusModel(
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$StatusModelToJson(StatusModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
    };

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) => DataResponse(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderObjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataResponseToJson(DataResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

OrderObjectModel _$OrderObjectModelFromJson(Map<String, dynamic> json) =>
    OrderObjectModel(
      symbol: json['symbol'] as String?,
      type: json['type'] as String?,
      creation_time: (json['creation_time'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num?)?.toDouble(),
      side: json['side'] as String?,
    );

Map<String, dynamic> _$OrderObjectModelToJson(OrderObjectModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'type': instance.type,
      'side': instance.side,
      'quantity': instance.quantity,
      'creation_time': instance.creation_time,
      'price': instance.price,
    };
