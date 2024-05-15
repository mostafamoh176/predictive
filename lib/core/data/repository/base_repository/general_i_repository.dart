import 'package:dio/dio.dart';
import '../../models/base_entity.dart';
import '../../models/base_model/shared_enum.dart';
import '../../../resources/enum/api_methods.dart';

abstract class GeneralIRepository {
  handler<T>({
    required api_methods method,
    required String path,
    BaseEntity? queryParameters,
    BaseEntity? body,
    SuccessResponseMapperType? successResponseMapperType,
    Map<String, dynamic>? headers,
    String? contentType,
    ResponseType? responseType,
  });
}
