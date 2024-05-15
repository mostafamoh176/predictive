part of 'app_bloc.dart';

@freezed
class AppEvent extends BaseBlocEvent with _$AppEvent {
  const factory AppEvent.lang({String? lang}) = AppLangEvent;
  const factory AppEvent.theme({bool? theme}) = AppThemeEvent;

  const factory AppEvent.themeIntial({required BuildContext context}) = AppThemeIntialEvent;

}

