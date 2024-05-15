import 'package:dio/dio.dart';
import '../../../resources/constants/server_request_response_constants.dart';

import '../shared_preferences/shared_preferences.dart';
import 'base_interceptor.dart';

// @Injectable()
class AccessTokenInterceptor extends BaseInterceptor {
  @override
  int get priority => BaseInterceptor.accessTokenPriority;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
   // final token = CacheHelper.getData(key: 'token');
  //  final temperoryToken=CacheHelper.getData(key: 'temp_token');
  //  if (temperoryToken != null) {
      options.headers[ServerRequestResponseConstants.basicAuthorization] =
          ServerRequestResponseConstants.bearer + "temperoryToken";
  //  }

    handler.next(options);
  }
}
