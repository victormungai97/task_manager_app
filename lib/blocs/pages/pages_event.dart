// blocs/pages/pages_event.dart

part of 'pages_bloc.dart';

@freezed
class PageEvent with _$PageEvent {
  /// Initial event
  const factory PageEvent.started() = _Started;

  /// Event for tracking movement between pages
  const factory PageEvent.navigated(String? route) = _Navigated;
}
