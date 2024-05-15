import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../model/list_model_response.dart';

class OrderListRepo{
  final ApiService _apiService;

  OrderListRepo(this._apiService);
  Future<ApiResult<ListOrderModel>> orderDataServices()async{
    try{
      final response=await _apiService.orderList();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}