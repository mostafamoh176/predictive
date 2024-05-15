
import '../base_entity.dart';
import 'pagination_model.dart';

class DataResponse<T> {
  DataResponse({
    this.message,
    this.data,
    this.model,
    this.success,
    this.status,
    this.color,
    this.icon,
    this.alert,
    this.pagination
  });

  String? message;
  dynamic data;
  String? model;
  bool? success;
  String? status;
  String? color;
  String? icon;
  bool? alert;
  PaginationModel? pagination;

  DataResponse.fromJsonObject(dynamic response, BaseEntity? model) {
    data = model?.fromJson(response['data']??response);
    responseModeling(response);
  }

  DataResponse.fromJsonArray(dynamic response, BaseEntity? model) {

    if(response['data'] == null) {response['data'] = [];}

    data = List<T>.from((response['data']??response).map((e)=> model?.fromJson(e)));
    responseModeling(response);
  }


  responseModeling(response) {
    message = response['message'];
    model = response['model'];
    success = response['success'];
    status = response['status'];
    color = response['color'];
    icon = response['icon'];
    alert = response['alert'];
    pagination = PaginationModel.fromJson(response?['pagination']??{});
  }
}
