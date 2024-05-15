import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_action.freezed.dart';
abstract class BaseAction<Parameters>{
  handler([Parameters parameters]);
}


@freezed
class NoParameters with _$NoParameters {
  const factory NoParameters() = _NoParameters;
}