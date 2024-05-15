// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PortfolioModel _$PortfolioModelFromJson(Map<String, dynamic> json) =>
    PortfolioModel(
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      message: json['message'] as String?,
      portfolio: json['data'] == null
          ? null
          : PortfolioDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PortfolioModelToJson(PortfolioModel instance) =>
    <String, dynamic>{
      'data': instance.portfolio,
      'status': instance.status,
      'message': instance.message,
    };

PortfolioDataModel _$PortfolioDataModelFromJson(Map<String, dynamic> json) =>
    PortfolioDataModel(
      portfolio: json['portfolio'] == null
          ? null
          : PortfolioObjectModel.fromJson(
              json['portfolio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PortfolioDataModelToJson(PortfolioDataModel instance) =>
    <String, dynamic>{
      'portfolio': instance.portfolio,
    };

PortfolioObjectModel _$PortfolioObjectModelFromJson(
        Map<String, dynamic> json) =>
    PortfolioObjectModel(
      balance: (json['balance'] as num?)?.toDouble(),
      profit_percentage: (json['profit_percentage'] as num?)?.toInt(),
      profit: (json['profit'] as num?)?.toDouble(),
      assets: (json['assets'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PortfolioObjectModelToJson(
        PortfolioObjectModel instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'profit': instance.profit,
      'profit_percentage': instance.profit_percentage,
      'assets': instance.assets,
    };
