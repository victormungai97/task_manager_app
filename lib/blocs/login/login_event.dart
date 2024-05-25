// blocs/login/login_event.dart

part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  /// Initial event
  const factory LoginEvent.started() = _LoginStarted;

  /// Event for signing user in
  const factory LoginEvent.userLoggedIn(
    ({String username, String password}) credentials,
  ) = _UserLoggedIn;
}
