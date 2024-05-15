part of 'table_bloc.dart';

@freezed
class TableState with _$TableState {
  const factory TableState.initial() = _Initial;

///List of Order state
  const factory TableState.orderListLoadingState()=OrderListLoadingState;
  const factory TableState.orderListSuccessfulState()=OrderListSuccessfulState;
  const factory TableState.orderListErrorState( String error)=OrderListErrorState;

///portfolio state
  const factory TableState.portfolioListLoadingState()=PortfolioListLoadingState;
  const factory TableState.portfolioListSuccessfulState()=PortfolioListSuccessfulState;
  const factory TableState.portfolioListErrorState( String error)=PortfolioListErrorState;

///filter state
  const factory TableState.filterListLoadingState()=FilterListLoadingState;
  const factory TableState.filterListSuccessfulState()=FilterListSuccessfulState;
  const factory TableState.filterListErrorState( String error)=FilterListErrorState;


}
