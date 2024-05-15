import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../model/list_model_response.dart';
import '../model/portfolio_model_response.dart';

class PortfolioRepo{
  final ApiService _apiService;

  PortfolioRepo(this._apiService);
  Future<ApiResult<PortfolioModel>> portfolioDataServices()async{
    try{
      final response=await _apiService.portfolioData();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}