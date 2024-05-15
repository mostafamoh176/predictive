import 'package:dio/dio.dart';
import '../../../networking/endpoints.dart';
import '../../../shared/config/api_client/rest_api_client.dart';

class AuthAppServerApiClient extends RestApiClient {
  AuthAppServerApiClient(List<Interceptor> interceptors , baseURL) : super(baseUrl: baseURL ?? Endpoints.appURL, interceptors: interceptors);
}
