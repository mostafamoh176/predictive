import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:predictive_task/features/table_show_feat/business_logic/table_bloc.dart';
import 'package:predictive_task/features/table_show_feat/data/repository/portfolio_repo.dart';
import '../../features/table_show_feat/data/repository/order_list_repo.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGet() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<OrderListRepo>(() => OrderListRepo(getIt()));
  getIt.registerLazySingleton<PortfolioRepo>(() => PortfolioRepo(getIt()));
  getIt.registerLazySingleton<TableBloc>(() => TableBloc( orderListRepo: getIt(),portfolioRepo: getIt()));

}
