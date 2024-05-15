import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:predictive_task/core/routes/app_router.dart';

import '../../../core/networking/easy_loading.dart';
import '../data/model/list_model_response.dart';
import '../data/model/portfolio_model_response.dart';
import '../data/repository/order_list_repo.dart';
import '../data/repository/portfolio_repo.dart';

part 'table_event.dart';
part 'table_state.dart';
part 'table_bloc.freezed.dart';

class TableBloc extends Bloc<TableEvent, TableState> {
  OrderListRepo orderListRepo;
  PortfolioRepo portfolioRepo;
  TableBloc({required this.orderListRepo, required this.portfolioRepo}) : super(const TableState.initial()) {
    on<_OrderListEvent>(_orderListDataAction);
    on<_PortfolioEvent>(_portfolioDataAction);
    on<_FilterEvent>(_filterEventAction);
  }

  ///Get List of order event
  ListOrderModel? uploadedData;
  Future<FutureOr<void>> _orderListDataAction(_OrderListEvent event, emit) async {
    emit(TableState.orderListLoadingState());
    try {
      EasyLoadingImpl.runLoading();
      final response = await orderListRepo.orderDataServices();
      response.when(success: (response) {
        uploadedData = response;
        emit(TableState.orderListSuccessfulState());
      }, failure: (errorResponse) {
        emit(TableState.orderListErrorState(errorResponse.apiErrorModel.message ?? ""));
      });
    } finally {
      EasyLoadingImpl.stopLoading();
    }
  }

  ///Get Portfolio Data
  PortfolioModel? portofilaData;
  Future<FutureOr<void>> _portfolioDataAction(_PortfolioEvent event, emit) async {
    emit(TableState.portfolioListLoadingState());
    try {
      EasyLoadingImpl.runLoading();
      final response = await portfolioRepo.portfolioDataServices();
      response.when(success: (response) {
        portofilaData = response;
        emit(TableState.portfolioListSuccessfulState());
      }, failure: (errorResponse) {
        emit(TableState.portfolioListErrorState(errorResponse.apiErrorModel.message ?? ""));
      });
    } finally {
      EasyLoadingImpl.stopLoading();
    }
  }

  ///Get filter Data
  List<OrderObjectModel>? filterData;

  Future<FutureOr<void>> _filterEventAction(_FilterEvent event, emit) async {
    emit(TableState.filterListLoadingState());
    try {
      EasyLoadingImpl.runLoading();
      filterData = event.order.where((order) {
        print("ssdd${event.startDate}");
        print("ssdd2${event.endDate}");
        print("ssdw${order.creation_time}");
        print("ssdwse${ event.price == null || order.price! <= event.price!}");
        print("ssddssss${event.symbol}");
        final bool matchesSymbol = event.symbol == null ||event.symbol == "null" || order.symbol!.toUpperCase() == event.symbol;
        final bool matchesPrice = event.price == null || order.price! == event.price!;
        final bool matchesStartDate = event.startDate == null || order.creation_time! >= event.startDate!;
        final bool matchesEndDate = event.endDate == null || order.creation_time! <= event.endDate!;

        return matchesSymbol && matchesPrice && matchesStartDate && matchesEndDate;
      }).toList();
      emit(TableState.filterListSuccessfulState());
    } finally {
      EasyLoadingImpl.stopLoading();
      appRouter.pop();
      emit(TableState.filterListErrorState(""));
    }
  }
}
