import 'package:dio/dio.dart';

import '../resources/constants/routes.dart';
import '../routes/app_router.dart';
import '../shared/config/shared_preferences/shared_preferences.dart';
import 'api_error_model.dart';
import 'endpoints.dart';

// TODO: wallahy I will refactor this .. Omar Ahmed
enum DataSource {
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  // API_LOGIC_ERROR,
  DEFAULT
}

class ResponseCode {
  static const SUCCESS = "200"; // success with data
  static const NO_CONTENT = "201"; // success with no data (no content)
  static const BAD_REQUEST = "400"; // failure, API rejected request
  static const UNAUTORISED = "401"; // failure, user is not authorised
  static const FORBIDDEN = "403"; //  failure, API rejected request
  static const INTERNAL_SERVER_ERROR = "500"; // failure, crash in server side
  static const NOT_FOUND = "404"; // failure, not found
  static const API_LOGIC_ERROR = "422"; // API , lOGIC ERROR

  // local status code
  static const CONNECT_TIMEOUT = "-1";
  static const CANCEL = "-2";
  static const RECIEVE_TIMEOUT = "-3";
  static const SEND_TIMEOUT = "-4";
  static const CACHE_ERROR = "-5";
  static const NO_INTERNET_CONNECTION = " -6";
  static const DEFAULT = "-7";
}

class ResponseMessage {
  static const String NO_CONTENT = ApiErrors.noContent; // success with no data (no content)
  static const String BAD_REQUEST = ApiErrors.badRequestError; // failure, API rejected request
  static const String UNAUTORISED = ApiErrors.unauthorizedError; // failure, user is not authorised
  static const String FORBIDDEN = ApiErrors.forbiddenError; //  failure, API rejected request
  static const String INTERNAL_SERVER_ERROR = ApiErrors.internalServerError; // failure, crash in server side
  static const String NOT_FOUND = ApiErrors.notFoundError; // failure, crash in server side

  // local status code
  static String CONNECT_TIMEOUT = ApiErrors.timeoutError;
  static String CANCEL = ApiErrors.cacheError;
  static String RECIEVE_TIMEOUT = ApiErrors.timeoutError;
  static String SEND_TIMEOUT = ApiErrors.timeoutError;
  static String CACHE_ERROR = ApiErrors.cacheError;
  static String NO_INTERNET_CONNECTION = ApiErrors.noInternetError;
  static String DEFAULT = ApiErrors.defaultError;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.NO_CONTENT:
        return ApiErrorModel(errorCode: ResponseCode.NO_CONTENT, message: ResponseMessage.NO_CONTENT);
      case DataSource.BAD_REQUEST:
        return ApiErrorModel(errorCode: ResponseCode.BAD_REQUEST, message: ResponseMessage.BAD_REQUEST);
      case DataSource.FORBIDDEN:
        return ApiErrorModel(errorCode: ResponseCode.FORBIDDEN, message: ResponseMessage.FORBIDDEN);
      case DataSource.UNAUTORISED:
        return ApiErrorModel(errorCode: ResponseCode.UNAUTORISED, message: ResponseMessage.UNAUTORISED);
      case DataSource.NOT_FOUND:
        return ApiErrorModel(errorCode: ResponseCode.NOT_FOUND, message: ResponseMessage.NOT_FOUND);
      case DataSource.INTERNAL_SERVER_ERROR:
        return ApiErrorModel(errorCode: ResponseCode.INTERNAL_SERVER_ERROR, message: ResponseMessage.INTERNAL_SERVER_ERROR);
      case DataSource.CONNECT_TIMEOUT:
        return ApiErrorModel(errorCode: ResponseCode.CONNECT_TIMEOUT, message: ResponseMessage.CONNECT_TIMEOUT);
      case DataSource.CANCEL:
        return ApiErrorModel(errorCode: ResponseCode.CANCEL, message: ResponseMessage.CANCEL);
      case DataSource.RECIEVE_TIMEOUT:
        return ApiErrorModel(errorCode: ResponseCode.RECIEVE_TIMEOUT, message: ResponseMessage.RECIEVE_TIMEOUT);
      case DataSource.SEND_TIMEOUT:
        return ApiErrorModel(errorCode: ResponseCode.SEND_TIMEOUT, message: ResponseMessage.SEND_TIMEOUT);
      case DataSource.CACHE_ERROR:
        return ApiErrorModel(errorCode: ResponseCode.CACHE_ERROR, message: ResponseMessage.CACHE_ERROR);
      case DataSource.NO_INTERNET_CONNECTION:
        return ApiErrorModel(errorCode: ResponseCode.NO_INTERNET_CONNECTION, message: ResponseMessage.NO_INTERNET_CONNECTION);
      case DataSource.DEFAULT:
        return ApiErrorModel(errorCode: ResponseCode.DEFAULT, message: ResponseMessage.DEFAULT);
    }
  }
}

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      print("lmklk${error}");
      if(error.response!.data==null){

      }
      if (error.response!.statusCode == 403 && !ApiErrorModel.fromJson(error.response!.data).errorCode!.contains("REGISTER_ERROR") ) {
        apiErrorModel = _handleError(error);

      } else {
        apiErrorModel = _handleError(error);
      }
    } else {
      apiErrorModel = DataSource.DEFAULT.getFailure();
    }
  }
}

ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.CONNECT_TIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.SEND_TIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.RECIEVE_TIMEOUT.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null && error.response?.statusCode != null && error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.badResponse:
      if (error.response != null && error.response?.statusCode != null && error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.unknown:
      if (error.response != null && error.response?.statusCode != null && error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.CANCEL.getFailure();
    case DioExceptionType.connectionError:
      return DataSource.DEFAULT.getFailure();
    case DioExceptionType.badCertificate:
      return DataSource.DEFAULT.getFailure();
    case DioExceptionType.badResponse:
      return DataSource.DEFAULT.getFailure();
  }
}

class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
}
