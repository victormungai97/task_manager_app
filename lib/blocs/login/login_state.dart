// blocs/login/login_event.dart

part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  /// Factory constructor for initial login state
  const factory LoginState.initial() = LoginInitial;

  /// Factory constructor to state that indicates signing in is ongoing
  const factory LoginState.loading() = LoginLoading;

  /// Factory constructor to state that indicates signing in has finished
  const factory LoginState.complete(UserModel authenticatedUser) = LoginDone;

  /// Factory constructor for error that may occur while logging in
  const factory LoginState.exception({required String exception}) = LoginError;
}
