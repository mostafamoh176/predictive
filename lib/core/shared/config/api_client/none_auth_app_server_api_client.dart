import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../networking/endpoints.dart';
import '../../../shared/config/api_client/rest_api_client.dart';

@LazySingleton()
class NoneAuthAppServerApiClient extends RestApiClient {

  NoneAuthAppServerApiClient(List<Interceptor> interceptors , baseURL) : super(baseUrl: baseURL ?? Endpoints.appURL , interceptors: interceptors);


}