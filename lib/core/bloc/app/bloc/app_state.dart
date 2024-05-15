
part of 'app_bloc.dart';

@freezed
class AppState extends BaseBlocState with _$AppState {
  const factory AppState.lang(String local) = AppLangState;
  const factory AppState.theme(bool theme) = AppThemeState;
  const factory AppState.themeIntial() = AppThemeIntialState;
  const factory AppState.lightTheme() = AppThemeLightState;

}
