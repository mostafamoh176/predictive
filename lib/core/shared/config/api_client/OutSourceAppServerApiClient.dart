import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../shared/config/api_client/rest_api_client.dart';

@LazySingleton()
class OutSourceAppServerApiClient extends RestApiClient {
  OutSourceAppServerApiClient(List<Interceptor> interceptors,String? baseUrl) : super(baseUrl: baseUrl!, interceptors: interceptors);
}
