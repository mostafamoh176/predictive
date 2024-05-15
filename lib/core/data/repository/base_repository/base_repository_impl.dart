import 'package:dio/dio.dart';

import '../../../resources/enum/api_methods.dart';
import '../../../shared/config/api_client/auth_app_server_api_client.dart';
import '../../../shared/config/api_client/none_auth_app_server_api_client.dart';
import '../../../shared/config/api_client/rest_api_client.dart';
import '../../../shared/config/middleware/access_token_interceptor.dart';
import '../../../shared/config/middleware/header_interceptor.dart';
import '../../../shared/config/middleware/language_interceptor.dart';
import '../../models/base_entity.dart';
import '../../models/base_model/data_response.dart';
import '../../models/base_model/shared_enum.dart';
import 'general_i_repository.dart';

class BaseRepositoryImpl implements GeneralIRepository {
  BaseEntity model;
  bool? flag;
  String? baseURL;
  RestApiClient? application;

  BaseRepositoryImpl(this.model, {this.flag = false, this.baseURL}) {
    if (flag!) {
      application = AuthAppServerApiClient([
        HeaderInterceptor(),
        LanguageInterceptor(),
        AccessTokenInterceptor()
      ], baseURL);
    } else {
      application = NoneAuthAppServerApiClient([
        HeaderInterceptor(),
        LanguageInterceptor(),
      ], baseURL);
    }
  }

  @override
  Future< /*Either<dynamic,*/ DataResponse> /*>*/ handler<T>({
    required api_methods method,
    required String path,
    BaseEntity? queryParameters,
    BaseEntity? body,
    SuccessResponseMapperType? successResponseMapperType,
    Map<String, dynamic>? headers,
    String? contentType,
    ResponseType? responseType,
  }) async {
    final result = await application?.request<T>(
      method: method,
      path: path,
      body: body,
      contentType: contentType,
      model: model,
      headers: headers,
      queryParameters: queryParameters,
      responseType: responseType,
      successResponseMapperType: successResponseMapperType,
    );
    return result! /*.fold((l) => left(l), (r) => right(r))*/;
  }
}
