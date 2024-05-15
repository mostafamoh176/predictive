// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actions_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DynamicActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visible,
    required TResult Function() invisible,
    required TResult Function() filter,
    required TResult Function() non,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visible,
    TResult? Function()? invisible,
    TResult? Function()? filter,
    TResult? Function()? non,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visible,
    TResult Function()? invisible,
    TResult Function()? filter,
    TResult Function()? non,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DynamicActionsVisible value) visible,
    required TResult Function(DynamicActionsNotVisible value) invisible,
    required TResult Function(DynamicActionsFilter value) filter,
    required TResult Function(DynamicActionsNoN value) non,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DynamicActionsVisible value)? visible,
    TResult? Function(DynamicActionsNotVisible value)? invisible,
    TResult? Function(DynamicActionsFilter value)? filter,
    TResult? Function(DynamicActionsNoN value)? non,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DynamicActionsVisible value)? visible,
    TResult Function(DynamicActionsNotVisible value)? invisible,
    TResult Function(DynamicActionsFilter value)? filter,
    TResult Function(DynamicActionsNoN value)? non,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicActionsCopyWith<$Res> {
  factory $DynamicActionsCopyWith(
          DynamicActions value, $Res Function(DynamicActions) then) =
      _$DynamicActionsCopyWithImpl<$Res, DynamicActions>;
}

/// @nodoc
class _$DynamicActionsCopyWithImpl<$Res, $Val extends DynamicActions>
    implements $DynamicActionsCopyWith<$Res> {
  _$DynamicActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DynamicActionsVisibleImplCopyWith<$Res> {
  factory _$$DynamicActionsVisibleImplCopyWith(
          _$DynamicActionsVisibleImpl value,
          $Res Function(_$DynamicActionsVisibleImpl) then) =
      __$$DynamicActionsVisibleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DynamicActionsVisibleImplCopyWithImpl<$Res>
    extends _$DynamicActionsCopyWithImpl<$Res, _$DynamicActionsVisibleImpl>
    implements _$$DynamicActionsVisibleImplCopyWith<$Res> {
  __$$DynamicActionsVisibleImplCopyWithImpl(_$DynamicActionsVisibleImpl _value,
      $Res Function(_$DynamicActionsVisibleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DynamicActionsVisibleImpl implements DynamicActionsVisible {
  const _$DynamicActionsVisibleImpl();

  @override
  String toString() {
    return 'DynamicActions.visible()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicActionsVisibleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visible,
    required TResult Function() invisible,
    required TResult Function() filter,
    required TResult Function() non,
  }) {
    return visible();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visible,
    TResult? Function()? invisible,
    TResult? Function()? filter,
    TResult? Function()? non,
  }) {
    return visible?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visible,
    TResult Function()? invisible,
    TResult Function()? filter,
    TResult Function()? non,
    required TResult orElse(),
  }) {
    if (visible != null) {
      return visible();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DynamicActionsVisible value) visible,
    required TResult Function(DynamicActionsNotVisible value) invisible,
    required TResult Function(DynamicActionsFilter value) filter,
    required TResult Function(DynamicActionsNoN value) non,
  }) {
    return visible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DynamicActionsVisible value)? visible,
    TResult? Function(DynamicActionsNotVisible value)? invisible,
    TResult? Function(DynamicActionsFilter value)? filter,
    TResult? Function(DynamicActionsNoN value)? non,
  }) {
    return visible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DynamicActionsVisible value)? visible,
    TResult Function(DynamicActionsNotVisible value)? invisible,
    TResult Function(DynamicActionsFilter value)? filter,
    TResult Function(DynamicActionsNoN value)? non,
    required TResult orElse(),
  }) {
    if (visible != null) {
      return visible(this);
    }
    return orElse();
  }
}

abstract class DynamicActionsVisible implements DynamicActions {
  const factory DynamicActionsVisible() = _$DynamicActionsVisibleImpl;
}

/// @nodoc
abstract class _$$DynamicActionsNotVisibleImplCopyWith<$Res> {
  factory _$$DynamicActionsNotVisibleImplCopyWith(
          _$DynamicActionsNotVisibleImpl value,
          $Res Function(_$DynamicActionsNotVisibleImpl) then) =
      __$$DynamicActionsNotVisibleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DynamicActionsNotVisibleImplCopyWithImpl<$Res>
    extends _$DynamicActionsCopyWithImpl<$Res, _$DynamicActionsNotVisibleImpl>
    implements _$$DynamicActionsNotVisibleImplCopyWith<$Res> {
  __$$DynamicActionsNotVisibleImplCopyWithImpl(
      _$DynamicActionsNotVisibleImpl _value,
      $Res Function(_$DynamicActionsNotVisibleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DynamicActionsNotVisibleImpl implements DynamicActionsNotVisible {
  const _$DynamicActionsNotVisibleImpl();

  @override
  String toString() {
    return 'DynamicActions.invisible()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicActionsNotVisibleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visible,
    required TResult Function() invisible,
    required TResult Function() filter,
    required TResult Function() non,
  }) {
    return invisible();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visible,
    TResult? Function()? invisible,
    TResult? Function()? filter,
    TResult? Function()? non,
  }) {
    return invisible?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visible,
    TResult Function()? invisible,
    TResult Function()? filter,
    TResult Function()? non,
    required TResult orElse(),
  }) {
    if (invisible != null) {
      return invisible();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DynamicActionsVisible value) visible,
    required TResult Function(DynamicActionsNotVisible value) invisible,
    required TResult Function(DynamicActionsFilter value) filter,
    required TResult Function(DynamicActionsNoN value) non,
  }) {
    return invisible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DynamicActionsVisible value)? visible,
    TResult? Function(DynamicActionsNotVisible value)? invisible,
    TResult? Function(DynamicActionsFilter value)? filter,
    TResult? Function(DynamicActionsNoN value)? non,
  }) {
    return invisible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DynamicActionsVisible value)? visible,
    TResult Function(DynamicActionsNotVisible value)? invisible,
    TResult Function(DynamicActionsFilter value)? filter,
    TResult Function(DynamicActionsNoN value)? non,
    required TResult orElse(),
  }) {
    if (invisible != null) {
      return invisible(this);
    }
    return orElse();
  }
}

abstract class DynamicActionsNotVisible implements DynamicActions {
  const factory DynamicActionsNotVisible() = _$DynamicActionsNotVisibleImpl;
}

/// @nodoc
abstract class _$$DynamicActionsFilterImplCopyWith<$Res> {
  factory _$$DynamicActionsFilterImplCopyWith(_$DynamicActionsFilterImpl value,
          $Res Function(_$DynamicActionsFilterImpl) then) =
      __$$DynamicActionsFilterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DynamicActionsFilterImplCopyWithImpl<$Res>
    extends _$DynamicActionsCopyWithImpl<$Res, _$DynamicActionsFilterImpl>
    implements _$$DynamicActionsFilterImplCopyWith<$Res> {
  __$$DynamicActionsFilterImplCopyWithImpl(_$DynamicActionsFilterImpl _value,
      $Res Function(_$DynamicActionsFilterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DynamicActionsFilterImpl implements DynamicActionsFilter {
  const _$DynamicActionsFilterImpl();

  @override
  String toString() {
    return 'DynamicActions.filter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicActionsFilterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visible,
    required TResult Function() invisible,
    required TResult Function() filter,
    required TResult Function() non,
  }) {
    return filter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visible,
    TResult? Function()? invisible,
    TResult? Function()? filter,
    TResult? Function()? non,
  }) {
    return filter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visible,
    TResult Function()? invisible,
    TResult Function()? filter,
    TResult Function()? non,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DynamicActionsVisible value) visible,
    required TResult Function(DynamicActionsNotVisible value) invisible,
    required TResult Function(DynamicActionsFilter value) filter,
    required TResult Function(DynamicActionsNoN value) non,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DynamicActionsVisible value)? visible,
    TResult? Function(DynamicActionsNotVisible value)? invisible,
    TResult? Function(DynamicActionsFilter value)? filter,
    TResult? Function(DynamicActionsNoN value)? non,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DynamicActionsVisible value)? visible,
    TResult Function(DynamicActionsNotVisible value)? invisible,
    TResult Function(DynamicActionsFilter value)? filter,
    TResult Function(DynamicActionsNoN value)? non,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class DynamicActionsFilter implements DynamicActions {
  const factory DynamicActionsFilter() = _$DynamicActionsFilterImpl;
}

/// @nodoc
abstract class _$$DynamicActionsNoNImplCopyWith<$Res> {
  factory _$$DynamicActionsNoNImplCopyWith(_$DynamicActionsNoNImpl value,
          $Res Function(_$DynamicActionsNoNImpl) then) =
      __$$DynamicActionsNoNImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DynamicActionsNoNImplCopyWithImpl<$Res>
    extends _$DynamicActionsCopyWithImpl<$Res, _$DynamicActionsNoNImpl>
    implements _$$DynamicActionsNoNImplCopyWith<$Res> {
  __$$DynamicActionsNoNImplCopyWithImpl(_$DynamicActionsNoNImpl _value,
      $Res Function(_$DynamicActionsNoNImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DynamicActionsNoNImpl implements DynamicActionsNoN {
  const _$DynamicActionsNoNImpl();

  @override
  String toString() {
    return 'DynamicActions.non()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DynamicActionsNoNImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visible,
    required TResult Function() invisible,
    required TResult Function() filter,
    required TResult Function() non,
  }) {
    return non();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visible,
    TResult? Function()? invisible,
    TResult? Function()? filter,
    TResult? Function()? non,
  }) {
    return non?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visible,
    TResult Function()? invisible,
    TResult Function()? filter,
    TResult Function()? non,
    required TResult orElse(),
  }) {
    if (non != null) {
      return non();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DynamicActionsVisible value) visible,
    required TResult Function(DynamicActionsNotVisible value) invisible,
    required TResult Function(DynamicActionsFilter value) filter,
    required TResult Function(DynamicActionsNoN value) non,
  }) {
    return non(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DynamicActionsVisible value)? visible,
    TResult? Function(DynamicActionsNotVisible value)? invisible,
    TResult? Function(DynamicActionsFilter value)? filter,
    TResult? Function(DynamicActionsNoN value)? non,
  }) {
    return non?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DynamicActionsVisible value)? visible,
    TResult Function(DynamicActionsNotVisible value)? invisible,
    TResult Function(DynamicActionsFilter value)? filter,
    TResult Function(DynamicActionsNoN value)? non,
    required TResult orElse(),
  }) {
    if (non != null) {
      return non(this);
    }
    return orElse();
  }
}

abstract class DynamicActionsNoN implements DynamicActions {
  const factory DynamicActionsNoN() = _$DynamicActionsNoNImpl;
}
