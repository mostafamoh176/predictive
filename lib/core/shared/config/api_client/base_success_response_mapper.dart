import '../../../data/models/base_entity.dart';
import '../../../data/models/base_model/shared_enum.dart';
import '../../../data/models/base_model/data_response.dart';

class BaseSuccessResponseMapper {

  static DataResponse fromType<T>(SuccessResponseMapperType type , dynamic response, BaseEntity model) {

    switch (type) {
      case SuccessResponseMapperType.dataJsonObject:
        return DataResponse.fromJsonObject(response, model);
      case SuccessResponseMapperType.dataJsonArray:
        return DataResponse<T>.fromJsonArray(response, model);
    }
  }

}
