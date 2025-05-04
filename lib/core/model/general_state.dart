import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_state.freezed.dart';

@freezed
class GeneralState with _$GeneralState {
  const factory GeneralState.initial() = Initial;
  const factory GeneralState.loading() = Loading;
  const factory GeneralState.success() = Success;
  const factory GeneralState.error() = Error;
}
