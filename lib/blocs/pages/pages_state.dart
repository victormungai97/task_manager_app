// blocs/pages/pages_state.dart

part of 'pages_bloc.dart';

@freezed
class PageState with _$PageState {
  /// Factory constructor for state indicated page visited via navigation
  const factory PageState.view(String current) = _update;
}
