import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../base/bloc/base_bloc.dart';
import '../../base/bloc/base_bloc_event.dart';
import '../../base/bloc/base_bloc_state.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.lang('en')) {


  }

}
