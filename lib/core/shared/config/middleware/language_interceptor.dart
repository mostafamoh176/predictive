import 'package:dio/dio.dart';
import '../../../resources/constants/server_request_response_constants.dart';

import '../shared_preferences/shared_preferences.dart';
import 'base_interceptor.dart';

// @Injectable()
class LanguageInterceptor extends BaseInterceptor {

  @override
  int get priority => BaseInterceptor.accessTokenPriority;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
   // final languageCode = await CacheHelper.getData(key: 'lang');
   // if (languageCode != null) {
    //  options.headers[ServerRequestResponseConstants.language] = languageCode;
  //  }

    handler.next(options);
  }
}
