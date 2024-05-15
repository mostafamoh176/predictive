import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/table_show_feat/data/model/list_model_response.dart';
import '../../features/table_show_feat/data/model/portfolio_model_response.dart';
import 'endpoints.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Endpoints.appURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(Endpoints.listOrder)
  Future<ListOrderModel>orderList();

  @GET(Endpoints.portfolio)
  Future<PortfolioModel>portfolioData();
}