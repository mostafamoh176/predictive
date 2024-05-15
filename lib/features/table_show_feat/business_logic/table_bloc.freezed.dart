// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderListEvent,
    required TResult Function() portfolioEvent,
    required TResult Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)
        filterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderListEvent,
    TResult? Function()? portfolioEvent,
    TResult? Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)?
        filterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderListEvent,
    TResult Function()? portfolioEvent,
    TResult Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)?
        filterEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderListEvent value) orderListEvent,
    required TResult Function(_PortfolioEvent value) portfolioEvent,
    required TResult Function(_FilterEvent value) filterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderListEvent value)? orderListEvent,
    TResult? Function(_PortfolioEvent value)? portfolioEvent,
    TResult? Function(_FilterEvent value)? filterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderListEvent value)? orderListEvent,
    TResult Function(_PortfolioEvent value)? portfolioEvent,
    TResult Function(_FilterEvent value)? filterEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableEventCopyWith<$Res> {
  factory $TableEventCopyWith(
          TableEvent value, $Res Function(TableEvent) then) =
      _$TableEventCopyWithImpl<$Res, TableEvent>;
}

/// @nodoc
class _$TableEventCopyWithImpl<$Res, $Val extends TableEvent>
    implements $TableEventCopyWith<$Res> {
  _$TableEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TableEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderListEvent,
    required TResult Function() portfolioEvent,
    required TResult Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)
        filterEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderListEvent,
    TResult? Function()? portfolioEvent,
    TResult? Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)?
        filterEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderListEvent,
    TResult Function()? portfolioEvent,
    TResult Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)?
        filterEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderListEvent value) orderListEvent,
    required TResult Function(_PortfolioEvent value) portfolioEvent,
    required TResult Function(_FilterEvent value) filterEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderListEvent value)? orderListEvent,
    TResult? Function(_PortfolioEvent value)? portfolioEvent,
    TResult? Function(_FilterEvent value)? filterEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderListEvent value)? orderListEvent,
    TResult Function(_PortfolioEvent value)? portfolioEvent,
    TResult Function(_FilterEvent value)? filterEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TableEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OrderListEventImplCopyWith<$Res> {
  factory _$$OrderListEventImplCopyWith(_$OrderListEventImpl value,
          $Res Function(_$OrderListEventImpl) then) =
      __$$OrderListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderListEventImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$OrderListEventImpl>
    implements _$$OrderListEventImplCopyWith<$Res> {
  __$$OrderListEventImplCopyWithImpl(
      _$OrderListEventImpl _value, $Res Function(_$OrderListEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderListEventImpl implements _OrderListEvent {
  const _$OrderListEventImpl();

  @override
  String toString() {
    return 'TableEvent.orderListEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderListEvent,
    required TResult Function() portfolioEvent,
    required TResult Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)
        filterEvent,
  }) {
    return orderListEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderListEvent,
    TResult? Function()? portfolioEvent,
    TResult? Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)?
        filterEvent,
  }) {
    return orderListEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderListEvent,
    TResult Function()? portfolioEvent,
    TResult Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)?
        filterEvent,
    required TResult orElse(),
  }) {
    if (orderListEvent != null) {
      return orderListEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderListEvent value) orderListEvent,
    required TResult Function(_PortfolioEvent value) portfolioEvent,
    required TResult Function(_FilterEvent value) filterEvent,
  }) {
    return orderListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderListEvent value)? orderListEvent,
    TResult? Function(_PortfolioEvent value)? portfolioEvent,
    TResult? Function(_FilterEvent value)? filterEvent,
  }) {
    return orderListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderListEvent value)? orderListEvent,
    TResult Function(_PortfolioEvent value)? portfolioEvent,
    TResult Function(_FilterEvent value)? filterEvent,
    required TResult orElse(),
  }) {
    if (orderListEvent != null) {
      return orderListEvent(this);
    }
    return orElse();
  }
}

abstract class _OrderListEvent implements TableEvent {
  const factory _OrderListEvent() = _$OrderListEventImpl;
}

/// @nodoc
abstract class _$$PortfolioEventImplCopyWith<$Res> {
  factory _$$PortfolioEventImplCopyWith(_$PortfolioEventImpl value,
          $Res Function(_$PortfolioEventImpl) then) =
      __$$PortfolioEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PortfolioEventImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$PortfolioEventImpl>
    implements _$$PortfolioEventImplCopyWith<$Res> {
  __$$PortfolioEventImplCopyWithImpl(
      _$PortfolioEventImpl _value, $Res Function(_$PortfolioEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PortfolioEventImpl implements _PortfolioEvent {
  const _$PortfolioEventImpl();

  @override
  String toString() {
    return 'TableEvent.portfolioEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PortfolioEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderListEvent,
    required TResult Function() portfolioEvent,
    required TResult Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)
        filterEvent,
  }) {
    return portfolioEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderListEvent,
    TResult? Function()? portfolioEvent,
    TResult? Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)?
        filterEvent,
  }) {
    return portfolioEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderListEvent,
    TResult Function()? portfolioEvent,
    TResult Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)?
        filterEvent,
    required TResult orElse(),
  }) {
    if (portfolioEvent != null) {
      return portfolioEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderListEvent value) orderListEvent,
    required TResult Function(_PortfolioEvent value) portfolioEvent,
    required TResult Function(_FilterEvent value) filterEvent,
  }) {
    return portfolioEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderListEvent value)? orderListEvent,
    TResult? Function(_PortfolioEvent value)? portfolioEvent,
    TResult? Function(_FilterEvent value)? filterEvent,
  }) {
    return portfolioEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderListEvent value)? orderListEvent,
    TResult Function(_PortfolioEvent value)? portfolioEvent,
    TResult Function(_FilterEvent value)? filterEvent,
    required TResult orElse(),
  }) {
    if (portfolioEvent != null) {
      return portfolioEvent(this);
    }
    return orElse();
  }
}

abstract class _PortfolioEvent implements TableEvent {
  const factory _PortfolioEvent() = _$PortfolioEventImpl;
}

/// @nodoc
abstract class _$$FilterEventImplCopyWith<$Res> {
  factory _$$FilterEventImplCopyWith(
          _$FilterEventImpl value, $Res Function(_$FilterEventImpl) then) =
      __$$FilterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<OrderObjectModel> order,
      String? symbol,
      double? price,
      int? startDate,
      int? endDate});
}

/// @nodoc
class __$$FilterEventImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$FilterEventImpl>
    implements _$$FilterEventImplCopyWith<$Res> {
  __$$FilterEventImplCopyWithImpl(
      _$FilterEventImpl _value, $Res Function(_$FilterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? symbol = freezed,
    Object? price = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$FilterEventImpl(
      order: null == order
          ? _value._order
          : order // ignore: cast_nullable_to_non_nullable
              as List<OrderObjectModel>,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FilterEventImpl implements _FilterEvent {
  const _$FilterEventImpl(
      {required final List<OrderObjectModel> order,
      required this.symbol,
      required this.price,
      required this.startDate,
      required this.endDate})
      : _order = order;

  final List<OrderObjectModel> _order;
  @override
  List<OrderObjectModel> get order {
    if (_order is EqualUnmodifiableListView) return _order;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order);
  }

  @override
  final String? symbol;
  @override
  final double? price;
  @override
  final int? startDate;
  @override
  final int? endDate;

  @override
  String toString() {
    return 'TableEvent.filterEvent(order: $order, symbol: $symbol, price: $price, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterEventImpl &&
            const DeepCollectionEquality().equals(other._order, _order) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_order),
      symbol,
      price,
      startDate,
      endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterEventImplCopyWith<_$FilterEventImpl> get copyWith =>
      __$$FilterEventImplCopyWithImpl<_$FilterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderListEvent,
    required TResult Function() portfolioEvent,
    required TResult Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)
        filterEvent,
  }) {
    return filterEvent(order, symbol, price, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderListEvent,
    TResult? Function()? portfolioEvent,
    TResult? Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)?
        filterEvent,
  }) {
    return filterEvent?.call(order, symbol, price, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderListEvent,
    TResult Function()? portfolioEvent,
    TResult Function(List<OrderObjectModel> order, String? symbol,
            double? price, int? startDate, int? endDate)?
        filterEvent,
    required TResult orElse(),
  }) {
    if (filterEvent != null) {
      return filterEvent(order, symbol, price, startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderListEvent value) orderListEvent,
    required TResult Function(_PortfolioEvent value) portfolioEvent,
    required TResult Function(_FilterEvent value) filterEvent,
  }) {
    return filterEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderListEvent value)? orderListEvent,
    TResult? Function(_PortfolioEvent value)? portfolioEvent,
    TResult? Function(_FilterEvent value)? filterEvent,
  }) {
    return filterEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderListEvent value)? orderListEvent,
    TResult Function(_PortfolioEvent value)? portfolioEvent,
    TResult Function(_FilterEvent value)? filterEvent,
    required TResult orElse(),
  }) {
    if (filterEvent != null) {
      return filterEvent(this);
    }
    return orElse();
  }
}

abstract class _FilterEvent implements TableEvent {
  const factory _FilterEvent(
      {required final List<OrderObjectModel> order,
      required final String? symbol,
      required final double? price,
      required final int? startDate,
      required final int? endDate}) = _$FilterEventImpl;

  List<OrderObjectModel> get order;
  String? get symbol;
  double? get price;
  int? get startDate;
  int? get endDate;
  @JsonKey(ignore: true)
  _$$FilterEventImplCopyWith<_$FilterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TableState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableStateCopyWith<$Res> {
  factory $TableStateCopyWith(
          TableState value, $Res Function(TableState) then) =
      _$TableStateCopyWithImpl<$Res, TableState>;
}

/// @nodoc
class _$TableStateCopyWithImpl<$Res, $Val extends TableState>
    implements $TableStateCopyWith<$Res> {
  _$TableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TableState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TableState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OrderListLoadingStateImplCopyWith<$Res> {
  factory _$$OrderListLoadingStateImplCopyWith(
          _$OrderListLoadingStateImpl value,
          $Res Function(_$OrderListLoadingStateImpl) then) =
      __$$OrderListLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderListLoadingStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$OrderListLoadingStateImpl>
    implements _$$OrderListLoadingStateImplCopyWith<$Res> {
  __$$OrderListLoadingStateImplCopyWithImpl(_$OrderListLoadingStateImpl _value,
      $Res Function(_$OrderListLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderListLoadingStateImpl implements OrderListLoadingState {
  const _$OrderListLoadingStateImpl();

  @override
  String toString() {
    return 'TableState.orderListLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) {
    return orderListLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) {
    return orderListLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (orderListLoadingState != null) {
      return orderListLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) {
    return orderListLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) {
    return orderListLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (orderListLoadingState != null) {
      return orderListLoadingState(this);
    }
    return orElse();
  }
}

abstract class OrderListLoadingState implements TableState {
  const factory OrderListLoadingState() = _$OrderListLoadingStateImpl;
}

/// @nodoc
abstract class _$$OrderListSuccessfulStateImplCopyWith<$Res> {
  factory _$$OrderListSuccessfulStateImplCopyWith(
          _$OrderListSuccessfulStateImpl value,
          $Res Function(_$OrderListSuccessfulStateImpl) then) =
      __$$OrderListSuccessfulStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderListSuccessfulStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$OrderListSuccessfulStateImpl>
    implements _$$OrderListSuccessfulStateImplCopyWith<$Res> {
  __$$OrderListSuccessfulStateImplCopyWithImpl(
      _$OrderListSuccessfulStateImpl _value,
      $Res Function(_$OrderListSuccessfulStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderListSuccessfulStateImpl implements OrderListSuccessfulState {
  const _$OrderListSuccessfulStateImpl();

  @override
  String toString() {
    return 'TableState.orderListSuccessfulState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListSuccessfulStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) {
    return orderListSuccessfulState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) {
    return orderListSuccessfulState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (orderListSuccessfulState != null) {
      return orderListSuccessfulState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) {
    return orderListSuccessfulState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) {
    return orderListSuccessfulState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (orderListSuccessfulState != null) {
      return orderListSuccessfulState(this);
    }
    return orElse();
  }
}

abstract class OrderListSuccessfulState implements TableState {
  const factory OrderListSuccessfulState() = _$OrderListSuccessfulStateImpl;
}

/// @nodoc
abstract class _$$OrderListErrorStateImplCopyWith<$Res> {
  factory _$$OrderListErrorStateImplCopyWith(_$OrderListErrorStateImpl value,
          $Res Function(_$OrderListErrorStateImpl) then) =
      __$$OrderListErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$OrderListErrorStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$OrderListErrorStateImpl>
    implements _$$OrderListErrorStateImplCopyWith<$Res> {
  __$$OrderListErrorStateImplCopyWithImpl(_$OrderListErrorStateImpl _value,
      $Res Function(_$OrderListErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OrderListErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderListErrorStateImpl implements OrderListErrorState {
  const _$OrderListErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TableState.orderListErrorState(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListErrorStateImplCopyWith<_$OrderListErrorStateImpl> get copyWith =>
      __$$OrderListErrorStateImplCopyWithImpl<_$OrderListErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) {
    return orderListErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) {
    return orderListErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (orderListErrorState != null) {
      return orderListErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) {
    return orderListErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) {
    return orderListErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (orderListErrorState != null) {
      return orderListErrorState(this);
    }
    return orElse();
  }
}

abstract class OrderListErrorState implements TableState {
  const factory OrderListErrorState(final String error) =
      _$OrderListErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$OrderListErrorStateImplCopyWith<_$OrderListErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PortfolioListLoadingStateImplCopyWith<$Res> {
  factory _$$PortfolioListLoadingStateImplCopyWith(
          _$PortfolioListLoadingStateImpl value,
          $Res Function(_$PortfolioListLoadingStateImpl) then) =
      __$$PortfolioListLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PortfolioListLoadingStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$PortfolioListLoadingStateImpl>
    implements _$$PortfolioListLoadingStateImplCopyWith<$Res> {
  __$$PortfolioListLoadingStateImplCopyWithImpl(
      _$PortfolioListLoadingStateImpl _value,
      $Res Function(_$PortfolioListLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PortfolioListLoadingStateImpl implements PortfolioListLoadingState {
  const _$PortfolioListLoadingStateImpl();

  @override
  String toString() {
    return 'TableState.portfolioListLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioListLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) {
    return portfolioListLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) {
    return portfolioListLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (portfolioListLoadingState != null) {
      return portfolioListLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) {
    return portfolioListLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) {
    return portfolioListLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (portfolioListLoadingState != null) {
      return portfolioListLoadingState(this);
    }
    return orElse();
  }
}

abstract class PortfolioListLoadingState implements TableState {
  const factory PortfolioListLoadingState() = _$PortfolioListLoadingStateImpl;
}

/// @nodoc
abstract class _$$PortfolioListSuccessfulStateImplCopyWith<$Res> {
  factory _$$PortfolioListSuccessfulStateImplCopyWith(
          _$PortfolioListSuccessfulStateImpl value,
          $Res Function(_$PortfolioListSuccessfulStateImpl) then) =
      __$$PortfolioListSuccessfulStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PortfolioListSuccessfulStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$PortfolioListSuccessfulStateImpl>
    implements _$$PortfolioListSuccessfulStateImplCopyWith<$Res> {
  __$$PortfolioListSuccessfulStateImplCopyWithImpl(
      _$PortfolioListSuccessfulStateImpl _value,
      $Res Function(_$PortfolioListSuccessfulStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PortfolioListSuccessfulStateImpl
    implements PortfolioListSuccessfulState {
  const _$PortfolioListSuccessfulStateImpl();

  @override
  String toString() {
    return 'TableState.portfolioListSuccessfulState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioListSuccessfulStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) {
    return portfolioListSuccessfulState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) {
    return portfolioListSuccessfulState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (portfolioListSuccessfulState != null) {
      return portfolioListSuccessfulState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) {
    return portfolioListSuccessfulState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) {
    return portfolioListSuccessfulState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (portfolioListSuccessfulState != null) {
      return portfolioListSuccessfulState(this);
    }
    return orElse();
  }
}

abstract class PortfolioListSuccessfulState implements TableState {
  const factory PortfolioListSuccessfulState() =
      _$PortfolioListSuccessfulStateImpl;
}

/// @nodoc
abstract class _$$PortfolioListErrorStateImplCopyWith<$Res> {
  factory _$$PortfolioListErrorStateImplCopyWith(
          _$PortfolioListErrorStateImpl value,
          $Res Function(_$PortfolioListErrorStateImpl) then) =
      __$$PortfolioListErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PortfolioListErrorStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$PortfolioListErrorStateImpl>
    implements _$$PortfolioListErrorStateImplCopyWith<$Res> {
  __$$PortfolioListErrorStateImplCopyWithImpl(
      _$PortfolioListErrorStateImpl _value,
      $Res Function(_$PortfolioListErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PortfolioListErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PortfolioListErrorStateImpl implements PortfolioListErrorState {
  const _$PortfolioListErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TableState.portfolioListErrorState(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioListErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioListErrorStateImplCopyWith<_$PortfolioListErrorStateImpl>
      get copyWith => __$$PortfolioListErrorStateImplCopyWithImpl<
          _$PortfolioListErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) {
    return portfolioListErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) {
    return portfolioListErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (portfolioListErrorState != null) {
      return portfolioListErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) {
    return portfolioListErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) {
    return portfolioListErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (portfolioListErrorState != null) {
      return portfolioListErrorState(this);
    }
    return orElse();
  }
}

abstract class PortfolioListErrorState implements TableState {
  const factory PortfolioListErrorState(final String error) =
      _$PortfolioListErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$PortfolioListErrorStateImplCopyWith<_$PortfolioListErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterListLoadingStateImplCopyWith<$Res> {
  factory _$$FilterListLoadingStateImplCopyWith(
          _$FilterListLoadingStateImpl value,
          $Res Function(_$FilterListLoadingStateImpl) then) =
      __$$FilterListLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterListLoadingStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$FilterListLoadingStateImpl>
    implements _$$FilterListLoadingStateImplCopyWith<$Res> {
  __$$FilterListLoadingStateImplCopyWithImpl(
      _$FilterListLoadingStateImpl _value,
      $Res Function(_$FilterListLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilterListLoadingStateImpl implements FilterListLoadingState {
  const _$FilterListLoadingStateImpl();

  @override
  String toString() {
    return 'TableState.filterListLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterListLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) {
    return filterListLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) {
    return filterListLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (filterListLoadingState != null) {
      return filterListLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) {
    return filterListLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) {
    return filterListLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (filterListLoadingState != null) {
      return filterListLoadingState(this);
    }
    return orElse();
  }
}

abstract class FilterListLoadingState implements TableState {
  const factory FilterListLoadingState() = _$FilterListLoadingStateImpl;
}

/// @nodoc
abstract class _$$FilterListSuccessfulStateImplCopyWith<$Res> {
  factory _$$FilterListSuccessfulStateImplCopyWith(
          _$FilterListSuccessfulStateImpl value,
          $Res Function(_$FilterListSuccessfulStateImpl) then) =
      __$$FilterListSuccessfulStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterListSuccessfulStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$FilterListSuccessfulStateImpl>
    implements _$$FilterListSuccessfulStateImplCopyWith<$Res> {
  __$$FilterListSuccessfulStateImplCopyWithImpl(
      _$FilterListSuccessfulStateImpl _value,
      $Res Function(_$FilterListSuccessfulStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilterListSuccessfulStateImpl implements FilterListSuccessfulState {
  const _$FilterListSuccessfulStateImpl();

  @override
  String toString() {
    return 'TableState.filterListSuccessfulState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterListSuccessfulStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) {
    return filterListSuccessfulState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) {
    return filterListSuccessfulState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (filterListSuccessfulState != null) {
      return filterListSuccessfulState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) {
    return filterListSuccessfulState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) {
    return filterListSuccessfulState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (filterListSuccessfulState != null) {
      return filterListSuccessfulState(this);
    }
    return orElse();
  }
}

abstract class FilterListSuccessfulState implements TableState {
  const factory FilterListSuccessfulState() = _$FilterListSuccessfulStateImpl;
}

/// @nodoc
abstract class _$$FilterListErrorStateImplCopyWith<$Res> {
  factory _$$FilterListErrorStateImplCopyWith(_$FilterListErrorStateImpl value,
          $Res Function(_$FilterListErrorStateImpl) then) =
      __$$FilterListErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FilterListErrorStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$FilterListErrorStateImpl>
    implements _$$FilterListErrorStateImplCopyWith<$Res> {
  __$$FilterListErrorStateImplCopyWithImpl(_$FilterListErrorStateImpl _value,
      $Res Function(_$FilterListErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FilterListErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterListErrorStateImpl implements FilterListErrorState {
  const _$FilterListErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TableState.filterListErrorState(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterListErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterListErrorStateImplCopyWith<_$FilterListErrorStateImpl>
      get copyWith =>
          __$$FilterListErrorStateImplCopyWithImpl<_$FilterListErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderListLoadingState,
    required TResult Function() orderListSuccessfulState,
    required TResult Function(String error) orderListErrorState,
    required TResult Function() portfolioListLoadingState,
    required TResult Function() portfolioListSuccessfulState,
    required TResult Function(String error) portfolioListErrorState,
    required TResult Function() filterListLoadingState,
    required TResult Function() filterListSuccessfulState,
    required TResult Function(String error) filterListErrorState,
  }) {
    return filterListErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderListLoadingState,
    TResult? Function()? orderListSuccessfulState,
    TResult? Function(String error)? orderListErrorState,
    TResult? Function()? portfolioListLoadingState,
    TResult? Function()? portfolioListSuccessfulState,
    TResult? Function(String error)? portfolioListErrorState,
    TResult? Function()? filterListLoadingState,
    TResult? Function()? filterListSuccessfulState,
    TResult? Function(String error)? filterListErrorState,
  }) {
    return filterListErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderListLoadingState,
    TResult Function()? orderListSuccessfulState,
    TResult Function(String error)? orderListErrorState,
    TResult Function()? portfolioListLoadingState,
    TResult Function()? portfolioListSuccessfulState,
    TResult Function(String error)? portfolioListErrorState,
    TResult Function()? filterListLoadingState,
    TResult Function()? filterListSuccessfulState,
    TResult Function(String error)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (filterListErrorState != null) {
      return filterListErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderListLoadingState value)
        orderListLoadingState,
    required TResult Function(OrderListSuccessfulState value)
        orderListSuccessfulState,
    required TResult Function(OrderListErrorState value) orderListErrorState,
    required TResult Function(PortfolioListLoadingState value)
        portfolioListLoadingState,
    required TResult Function(PortfolioListSuccessfulState value)
        portfolioListSuccessfulState,
    required TResult Function(PortfolioListErrorState value)
        portfolioListErrorState,
    required TResult Function(FilterListLoadingState value)
        filterListLoadingState,
    required TResult Function(FilterListSuccessfulState value)
        filterListSuccessfulState,
    required TResult Function(FilterListErrorState value) filterListErrorState,
  }) {
    return filterListErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderListLoadingState value)? orderListLoadingState,
    TResult? Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult? Function(OrderListErrorState value)? orderListErrorState,
    TResult? Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult? Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult? Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult? Function(FilterListLoadingState value)? filterListLoadingState,
    TResult? Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult? Function(FilterListErrorState value)? filterListErrorState,
  }) {
    return filterListErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderListLoadingState value)? orderListLoadingState,
    TResult Function(OrderListSuccessfulState value)? orderListSuccessfulState,
    TResult Function(OrderListErrorState value)? orderListErrorState,
    TResult Function(PortfolioListLoadingState value)?
        portfolioListLoadingState,
    TResult Function(PortfolioListSuccessfulState value)?
        portfolioListSuccessfulState,
    TResult Function(PortfolioListErrorState value)? portfolioListErrorState,
    TResult Function(FilterListLoadingState value)? filterListLoadingState,
    TResult Function(FilterListSuccessfulState value)?
        filterListSuccessfulState,
    TResult Function(FilterListErrorState value)? filterListErrorState,
    required TResult orElse(),
  }) {
    if (filterListErrorState != null) {
      return filterListErrorState(this);
    }
    return orElse();
  }
}

abstract class FilterListErrorState implements TableState {
  const factory FilterListErrorState(final String error) =
      _$FilterListErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$FilterListErrorStateImplCopyWith<_$FilterListErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
