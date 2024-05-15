// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lang) lang,
    required TResult Function(bool? theme) theme,
    required TResult Function(BuildContext context) themeIntial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lang)? lang,
    TResult? Function(bool? theme)? theme,
    TResult? Function(BuildContext context)? themeIntial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lang)? lang,
    TResult Function(bool? theme)? theme,
    TResult Function(BuildContext context)? themeIntial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLangEvent value) lang,
    required TResult Function(AppThemeEvent value) theme,
    required TResult Function(AppThemeIntialEvent value) themeIntial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLangEvent value)? lang,
    TResult? Function(AppThemeEvent value)? theme,
    TResult? Function(AppThemeIntialEvent value)? themeIntial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLangEvent value)? lang,
    TResult Function(AppThemeEvent value)? theme,
    TResult Function(AppThemeIntialEvent value)? themeIntial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppLangEventImplCopyWith<$Res> {
  factory _$$AppLangEventImplCopyWith(
          _$AppLangEventImpl value, $Res Function(_$AppLangEventImpl) then) =
      __$$AppLangEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? lang});
}

/// @nodoc
class __$$AppLangEventImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppLangEventImpl>
    implements _$$AppLangEventImplCopyWith<$Res> {
  __$$AppLangEventImplCopyWithImpl(
      _$AppLangEventImpl _value, $Res Function(_$AppLangEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = freezed,
  }) {
    return _then(_$AppLangEventImpl(
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppLangEventImpl implements AppLangEvent {
  const _$AppLangEventImpl({this.lang});

  @override
  final String? lang;

  @override
  String toString() {
    return 'AppEvent.lang(lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLangEventImpl &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLangEventImplCopyWith<_$AppLangEventImpl> get copyWith =>
      __$$AppLangEventImplCopyWithImpl<_$AppLangEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lang) lang,
    required TResult Function(bool? theme) theme,
    required TResult Function(BuildContext context) themeIntial,
  }) {
    return lang(this.lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lang)? lang,
    TResult? Function(bool? theme)? theme,
    TResult? Function(BuildContext context)? themeIntial,
  }) {
    return lang?.call(this.lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lang)? lang,
    TResult Function(bool? theme)? theme,
    TResult Function(BuildContext context)? themeIntial,
    required TResult orElse(),
  }) {
    if (lang != null) {
      return lang(this.lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLangEvent value) lang,
    required TResult Function(AppThemeEvent value) theme,
    required TResult Function(AppThemeIntialEvent value) themeIntial,
  }) {
    return lang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLangEvent value)? lang,
    TResult? Function(AppThemeEvent value)? theme,
    TResult? Function(AppThemeIntialEvent value)? themeIntial,
  }) {
    return lang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLangEvent value)? lang,
    TResult Function(AppThemeEvent value)? theme,
    TResult Function(AppThemeIntialEvent value)? themeIntial,
    required TResult orElse(),
  }) {
    if (lang != null) {
      return lang(this);
    }
    return orElse();
  }
}

abstract class AppLangEvent implements AppEvent {
  const factory AppLangEvent({final String? lang}) = _$AppLangEventImpl;

  String? get lang;
  @JsonKey(ignore: true)
  _$$AppLangEventImplCopyWith<_$AppLangEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppThemeEventImplCopyWith<$Res> {
  factory _$$AppThemeEventImplCopyWith(
          _$AppThemeEventImpl value, $Res Function(_$AppThemeEventImpl) then) =
      __$$AppThemeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? theme});
}

/// @nodoc
class __$$AppThemeEventImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppThemeEventImpl>
    implements _$$AppThemeEventImplCopyWith<$Res> {
  __$$AppThemeEventImplCopyWithImpl(
      _$AppThemeEventImpl _value, $Res Function(_$AppThemeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_$AppThemeEventImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AppThemeEventImpl implements AppThemeEvent {
  const _$AppThemeEventImpl({this.theme});

  @override
  final bool? theme;

  @override
  String toString() {
    return 'AppEvent.theme(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeEventImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeEventImplCopyWith<_$AppThemeEventImpl> get copyWith =>
      __$$AppThemeEventImplCopyWithImpl<_$AppThemeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lang) lang,
    required TResult Function(bool? theme) theme,
    required TResult Function(BuildContext context) themeIntial,
  }) {
    return theme(this.theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lang)? lang,
    TResult? Function(bool? theme)? theme,
    TResult? Function(BuildContext context)? themeIntial,
  }) {
    return theme?.call(this.theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lang)? lang,
    TResult Function(bool? theme)? theme,
    TResult Function(BuildContext context)? themeIntial,
    required TResult orElse(),
  }) {
    if (theme != null) {
      return theme(this.theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLangEvent value) lang,
    required TResult Function(AppThemeEvent value) theme,
    required TResult Function(AppThemeIntialEvent value) themeIntial,
  }) {
    return theme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLangEvent value)? lang,
    TResult? Function(AppThemeEvent value)? theme,
    TResult? Function(AppThemeIntialEvent value)? themeIntial,
  }) {
    return theme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLangEvent value)? lang,
    TResult Function(AppThemeEvent value)? theme,
    TResult Function(AppThemeIntialEvent value)? themeIntial,
    required TResult orElse(),
  }) {
    if (theme != null) {
      return theme(this);
    }
    return orElse();
  }
}

abstract class AppThemeEvent implements AppEvent {
  const factory AppThemeEvent({final bool? theme}) = _$AppThemeEventImpl;

  bool? get theme;
  @JsonKey(ignore: true)
  _$$AppThemeEventImplCopyWith<_$AppThemeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppThemeIntialEventImplCopyWith<$Res> {
  factory _$$AppThemeIntialEventImplCopyWith(_$AppThemeIntialEventImpl value,
          $Res Function(_$AppThemeIntialEventImpl) then) =
      __$$AppThemeIntialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$AppThemeIntialEventImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppThemeIntialEventImpl>
    implements _$$AppThemeIntialEventImplCopyWith<$Res> {
  __$$AppThemeIntialEventImplCopyWithImpl(_$AppThemeIntialEventImpl _value,
      $Res Function(_$AppThemeIntialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$AppThemeIntialEventImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$AppThemeIntialEventImpl implements AppThemeIntialEvent {
  const _$AppThemeIntialEventImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AppEvent.themeIntial(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeIntialEventImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeIntialEventImplCopyWith<_$AppThemeIntialEventImpl> get copyWith =>
      __$$AppThemeIntialEventImplCopyWithImpl<_$AppThemeIntialEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lang) lang,
    required TResult Function(bool? theme) theme,
    required TResult Function(BuildContext context) themeIntial,
  }) {
    return themeIntial(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lang)? lang,
    TResult? Function(bool? theme)? theme,
    TResult? Function(BuildContext context)? themeIntial,
  }) {
    return themeIntial?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lang)? lang,
    TResult Function(bool? theme)? theme,
    TResult Function(BuildContext context)? themeIntial,
    required TResult orElse(),
  }) {
    if (themeIntial != null) {
      return themeIntial(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLangEvent value) lang,
    required TResult Function(AppThemeEvent value) theme,
    required TResult Function(AppThemeIntialEvent value) themeIntial,
  }) {
    return themeIntial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLangEvent value)? lang,
    TResult? Function(AppThemeEvent value)? theme,
    TResult? Function(AppThemeIntialEvent value)? themeIntial,
  }) {
    return themeIntial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLangEvent value)? lang,
    TResult Function(AppThemeEvent value)? theme,
    TResult Function(AppThemeIntialEvent value)? themeIntial,
    required TResult orElse(),
  }) {
    if (themeIntial != null) {
      return themeIntial(this);
    }
    return orElse();
  }
}

abstract class AppThemeIntialEvent implements AppEvent {
  const factory AppThemeIntialEvent({required final BuildContext context}) =
      _$AppThemeIntialEventImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$AppThemeIntialEventImplCopyWith<_$AppThemeIntialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String local) lang,
    required TResult Function(bool theme) theme,
    required TResult Function() themeIntial,
    required TResult Function() lightTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String local)? lang,
    TResult? Function(bool theme)? theme,
    TResult? Function()? themeIntial,
    TResult? Function()? lightTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String local)? lang,
    TResult Function(bool theme)? theme,
    TResult Function()? themeIntial,
    TResult Function()? lightTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLangState value) lang,
    required TResult Function(AppThemeState value) theme,
    required TResult Function(AppThemeIntialState value) themeIntial,
    required TResult Function(AppThemeLightState value) lightTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLangState value)? lang,
    TResult? Function(AppThemeState value)? theme,
    TResult? Function(AppThemeIntialState value)? themeIntial,
    TResult? Function(AppThemeLightState value)? lightTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLangState value)? lang,
    TResult Function(AppThemeState value)? theme,
    TResult Function(AppThemeIntialState value)? themeIntial,
    TResult Function(AppThemeLightState value)? lightTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppLangStateImplCopyWith<$Res> {
  factory _$$AppLangStateImplCopyWith(
          _$AppLangStateImpl value, $Res Function(_$AppLangStateImpl) then) =
      __$$AppLangStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String local});
}

/// @nodoc
class __$$AppLangStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppLangStateImpl>
    implements _$$AppLangStateImplCopyWith<$Res> {
  __$$AppLangStateImplCopyWithImpl(
      _$AppLangStateImpl _value, $Res Function(_$AppLangStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? local = null,
  }) {
    return _then(_$AppLangStateImpl(
      null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppLangStateImpl implements AppLangState {
  const _$AppLangStateImpl(this.local);

  @override
  final String local;

  @override
  String toString() {
    return 'AppState.lang(local: $local)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLangStateImpl &&
            (identical(other.local, local) || other.local == local));
  }

  @override
  int get hashCode => Object.hash(runtimeType, local);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLangStateImplCopyWith<_$AppLangStateImpl> get copyWith =>
      __$$AppLangStateImplCopyWithImpl<_$AppLangStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String local) lang,
    required TResult Function(bool theme) theme,
    required TResult Function() themeIntial,
    required TResult Function() lightTheme,
  }) {
    return lang(local);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String local)? lang,
    TResult? Function(bool theme)? theme,
    TResult? Function()? themeIntial,
    TResult? Function()? lightTheme,
  }) {
    return lang?.call(local);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String local)? lang,
    TResult Function(bool theme)? theme,
    TResult Function()? themeIntial,
    TResult Function()? lightTheme,
    required TResult orElse(),
  }) {
    if (lang != null) {
      return lang(local);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLangState value) lang,
    required TResult Function(AppThemeState value) theme,
    required TResult Function(AppThemeIntialState value) themeIntial,
    required TResult Function(AppThemeLightState value) lightTheme,
  }) {
    return lang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLangState value)? lang,
    TResult? Function(AppThemeState value)? theme,
    TResult? Function(AppThemeIntialState value)? themeIntial,
    TResult? Function(AppThemeLightState value)? lightTheme,
  }) {
    return lang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLangState value)? lang,
    TResult Function(AppThemeState value)? theme,
    TResult Function(AppThemeIntialState value)? themeIntial,
    TResult Function(AppThemeLightState value)? lightTheme,
    required TResult orElse(),
  }) {
    if (lang != null) {
      return lang(this);
    }
    return orElse();
  }
}

abstract class AppLangState implements AppState {
  const factory AppLangState(final String local) = _$AppLangStateImpl;

  String get local;
  @JsonKey(ignore: true)
  _$$AppLangStateImplCopyWith<_$AppLangStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppThemeStateImplCopyWith<$Res> {
  factory _$$AppThemeStateImplCopyWith(
          _$AppThemeStateImpl value, $Res Function(_$AppThemeStateImpl) then) =
      __$$AppThemeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool theme});
}

/// @nodoc
class __$$AppThemeStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppThemeStateImpl>
    implements _$$AppThemeStateImplCopyWith<$Res> {
  __$$AppThemeStateImplCopyWithImpl(
      _$AppThemeStateImpl _value, $Res Function(_$AppThemeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$AppThemeStateImpl(
      null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppThemeStateImpl implements AppThemeState {
  const _$AppThemeStateImpl(this.theme);

  @override
  final bool theme;

  @override
  String toString() {
    return 'AppState.theme(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeStateImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeStateImplCopyWith<_$AppThemeStateImpl> get copyWith =>
      __$$AppThemeStateImplCopyWithImpl<_$AppThemeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String local) lang,
    required TResult Function(bool theme) theme,
    required TResult Function() themeIntial,
    required TResult Function() lightTheme,
  }) {
    return theme(this.theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String local)? lang,
    TResult? Function(bool theme)? theme,
    TResult? Function()? themeIntial,
    TResult? Function()? lightTheme,
  }) {
    return theme?.call(this.theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String local)? lang,
    TResult Function(bool theme)? theme,
    TResult Function()? themeIntial,
    TResult Function()? lightTheme,
    required TResult orElse(),
  }) {
    if (theme != null) {
      return theme(this.theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLangState value) lang,
    required TResult Function(AppThemeState value) theme,
    required TResult Function(AppThemeIntialState value) themeIntial,
    required TResult Function(AppThemeLightState value) lightTheme,
  }) {
    return theme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLangState value)? lang,
    TResult? Function(AppThemeState value)? theme,
    TResult? Function(AppThemeIntialState value)? themeIntial,
    TResult? Function(AppThemeLightState value)? lightTheme,
  }) {
    return theme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLangState value)? lang,
    TResult Function(AppThemeState value)? theme,
    TResult Function(AppThemeIntialState value)? themeIntial,
    TResult Function(AppThemeLightState value)? lightTheme,
    required TResult orElse(),
  }) {
    if (theme != null) {
      return theme(this);
    }
    return orElse();
  }
}

abstract class AppThemeState implements AppState {
  const factory AppThemeState(final bool theme) = _$AppThemeStateImpl;

  bool get theme;
  @JsonKey(ignore: true)
  _$$AppThemeStateImplCopyWith<_$AppThemeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppThemeIntialStateImplCopyWith<$Res> {
  factory _$$AppThemeIntialStateImplCopyWith(_$AppThemeIntialStateImpl value,
          $Res Function(_$AppThemeIntialStateImpl) then) =
      __$$AppThemeIntialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeIntialStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppThemeIntialStateImpl>
    implements _$$AppThemeIntialStateImplCopyWith<$Res> {
  __$$AppThemeIntialStateImplCopyWithImpl(_$AppThemeIntialStateImpl _value,
      $Res Function(_$AppThemeIntialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppThemeIntialStateImpl implements AppThemeIntialState {
  const _$AppThemeIntialStateImpl();

  @override
  String toString() {
    return 'AppState.themeIntial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeIntialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String local) lang,
    required TResult Function(bool theme) theme,
    required TResult Function() themeIntial,
    required TResult Function() lightTheme,
  }) {
    return themeIntial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String local)? lang,
    TResult? Function(bool theme)? theme,
    TResult? Function()? themeIntial,
    TResult? Function()? lightTheme,
  }) {
    return themeIntial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String local)? lang,
    TResult Function(bool theme)? theme,
    TResult Function()? themeIntial,
    TResult Function()? lightTheme,
    required TResult orElse(),
  }) {
    if (themeIntial != null) {
      return themeIntial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLangState value) lang,
    required TResult Function(AppThemeState value) theme,
    required TResult Function(AppThemeIntialState value) themeIntial,
    required TResult Function(AppThemeLightState value) lightTheme,
  }) {
    return themeIntial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLangState value)? lang,
    TResult? Function(AppThemeState value)? theme,
    TResult? Function(AppThemeIntialState value)? themeIntial,
    TResult? Function(AppThemeLightState value)? lightTheme,
  }) {
    return themeIntial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLangState value)? lang,
    TResult Function(AppThemeState value)? theme,
    TResult Function(AppThemeIntialState value)? themeIntial,
    TResult Function(AppThemeLightState value)? lightTheme,
    required TResult orElse(),
  }) {
    if (themeIntial != null) {
      return themeIntial(this);
    }
    return orElse();
  }
}

abstract class AppThemeIntialState implements AppState {
  const factory AppThemeIntialState() = _$AppThemeIntialStateImpl;
}

/// @nodoc
abstract class _$$AppThemeLightStateImplCopyWith<$Res> {
  factory _$$AppThemeLightStateImplCopyWith(_$AppThemeLightStateImpl value,
          $Res Function(_$AppThemeLightStateImpl) then) =
      __$$AppThemeLightStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeLightStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppThemeLightStateImpl>
    implements _$$AppThemeLightStateImplCopyWith<$Res> {
  __$$AppThemeLightStateImplCopyWithImpl(_$AppThemeLightStateImpl _value,
      $Res Function(_$AppThemeLightStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppThemeLightStateImpl implements AppThemeLightState {
  const _$AppThemeLightStateImpl();

  @override
  String toString() {
    return 'AppState.lightTheme()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppThemeLightStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String local) lang,
    required TResult Function(bool theme) theme,
    required TResult Function() themeIntial,
    required TResult Function() lightTheme,
  }) {
    return lightTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String local)? lang,
    TResult? Function(bool theme)? theme,
    TResult? Function()? themeIntial,
    TResult? Function()? lightTheme,
  }) {
    return lightTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String local)? lang,
    TResult Function(bool theme)? theme,
    TResult Function()? themeIntial,
    TResult Function()? lightTheme,
    required TResult orElse(),
  }) {
    if (lightTheme != null) {
      return lightTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLangState value) lang,
    required TResult Function(AppThemeState value) theme,
    required TResult Function(AppThemeIntialState value) themeIntial,
    required TResult Function(AppThemeLightState value) lightTheme,
  }) {
    return lightTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLangState value)? lang,
    TResult? Function(AppThemeState value)? theme,
    TResult? Function(AppThemeIntialState value)? themeIntial,
    TResult? Function(AppThemeLightState value)? lightTheme,
  }) {
    return lightTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLangState value)? lang,
    TResult Function(AppThemeState value)? theme,
    TResult Function(AppThemeIntialState value)? themeIntial,
    TResult Function(AppThemeLightState value)? lightTheme,
    required TResult orElse(),
  }) {
    if (lightTheme != null) {
      return lightTheme(this);
    }
    return orElse();
  }
}

abstract class AppThemeLightState implements AppState {
  const factory AppThemeLightState() = _$AppThemeLightStateImpl;
}
