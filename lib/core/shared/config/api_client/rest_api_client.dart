import 'package:dio/dio.dart';
import '../../../data/models/base_entity.dart';
import '../../../shared/config/api_client/base_success_response_mapper.dart';
import '../../../data/models/base_model/data_response.dart';
import '../../../data/models/base_model/shared_enum.dart';
import '../../../resources/enum/api_methods.dart';
import '../../data_object/api_client_default_settings.dart';
import '../../data_object/response_mapper_constants.dart';
import '../../data_object/server_timeout_constants.dart';
import '../middleware/base_interceptor.dart';
import 'dio_builder.dart';

class RestApiClient {
  RestApiClient({
    this.baseUrl = '',
    this.interceptors = const [],
    this.successResponseMapperType =
        ResponseMapperConstants.defaultSuccessResponseMapperType,
    this.connectTimeout = ServerTimeoutConstants.connectTimeout,
  }) : _dio = DioBuilder.createDio(
          options: BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: connectTimeout,
          ),
        ) {
    final sortedInterceptors = [
      ...ApiClientDefaultSetting.requiredInterceptors(_dio),
      ...interceptors,
    ]..map((element) {
        // .sortedByDescending((element) {
        return element is BaseInterceptor ? element.priority : -1;
      });

    _dio.interceptors.addAll(sortedInterceptors);
  }

  final SuccessResponseMapperType successResponseMapperType;
  final String baseUrl;
  final Duration? connectTimeout;
  final List<Interceptor> interceptors;
  final Dio _dio;

  Future< /*Either<dynamic,*/ DataResponse> /*>*/ request<T>({
    required api_methods method,
    required String path,
    BaseEntity? queryParameters,
    BaseEntity? body,
    BaseEntity? model,
    SuccessResponseMapperType? successResponseMapperType,
    Map<String, dynamic>? headers,
    String? contentType,
    ResponseType? responseType,
  }) async {
    try {
      Response response;
      final Para = queryParameters?.toJson();
      Para?.removeWhere((key, value) => value == null);
      final filteredBody = body?.toJson();
      filteredBody?.removeWhere((key, value) => value == null);
      response = await requestByMethod(
        method: method,
        path: path,
        queryParameters: Para,
        body: filteredBody,
        options: Options(
          headers: headers,
          contentType: contentType,
          responseType: responseType,
        ),
      );
      final result = BaseSuccessResponseMapper.fromType<T>(
          successResponseMapperType ?? this.successResponseMapperType,
          response.data,
          model!);
      // if(result.success!){ // }
      print(response.statusCode.toString() +
          'status cod =================================');

      return result;
    } finally {}
    //throw Exception();
  }

  Future<Response> fetch(RequestOptions requestOptions) {
    return _dio.fetch(requestOptions);
  }

  Future<Response> requestByMethod({
    required api_methods method,
    required String path,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Options? options,
  }) {
    switch (method) {
      case api_methods.get:
        return _dio.get(
          path,
          queryParameters: queryParameters,
          options: options,
        );
      case api_methods.post:
        return _dio.post(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case api_methods.postWithFile:
        return _dio.post(
          path,
          data: FormData.fromMap(body),
          queryParameters: queryParameters,
          options: options,
        );
      case api_methods.patch:
        return _dio.patch(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case api_methods.put:
        return _dio.put(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case api_methods.delete:
        return _dio.delete(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
    }
  }
}

//////////TODO: copy to new file////////////////////////

abstract class Failure {
  final dynamic err;

  const Failure(this.err);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer is cancelled');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('Np internet connection');
        }
        return ServerFailure('Unexpected Error, Please try again');
      default:
        return ServerFailure('Ops there was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if ([401, 400, 403].contains(statusCode)) {
      return ServerFailure(response['message']);
    } else if ([404].contains(statusCode)) {
      return ServerFailure('Your request not found, Please try later!');
    } else if ([500].contains(statusCode)) {
      return ServerFailure('Internal server error, Please try later!');
    } else {
      return ServerFailure('Ops there was an Error, Please try again');
    }
  }
}
