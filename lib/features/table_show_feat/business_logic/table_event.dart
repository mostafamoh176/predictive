part of 'table_bloc.dart';

@freezed
class TableEvent with _$TableEvent {
  const factory TableEvent.started() = _Started;
  const factory TableEvent.orderListEvent() = _OrderListEvent;
  const factory TableEvent.portfolioEvent() = _PortfolioEvent;
  const factory TableEvent.filterEvent({
    required List<OrderObjectModel> order,
    required String? symbol,
    required double? price,
    required int? startDate,
    required int? endDate
}) = _FilterEvent;

}
