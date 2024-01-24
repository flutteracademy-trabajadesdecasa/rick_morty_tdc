import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_app_state.freezed.dart';

@freezed
class StartAppState with _$StartAppState {
  const factory StartAppState({
    bool? isLogged,
  }) = _StartAppState;
}
