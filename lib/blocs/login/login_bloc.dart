// blocs/login/login_bloc.dart

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/constants/constants.dart';
import 'package:task_manager_app/models/models.dart';
import 'package:task_manager_app/services/logging_service.dart';
import 'package:task_manager_app/services/login_service.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

/// BLoC to listen for and hence carry out sign user into app

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  /// Create an instance of ``[LoginBloc]``
  LoginBloc(this._loginService) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) {
      event.whenOrNull(userLoggedIn: _userLoggedIn);
    });
  }

  static const _logger = LoggingService.instance;

  /// Sign user in here
  Future<void> _userLoggedIn(
    ({String password, String username}) details,
  ) async {
    try {
      emit(const LoginState.loading());

      // log user in
      final result = await _loginService.signIn(
        details.username,
        details.password,
      );
      final exception = result.error;
      if (exception != null && exception.isNotEmpty) {
        emit(LoginState.exception(exception: exception));
        return;
      }
      final user = result.data;
      if (user == null) {
        emit(const LoginError(exception: Messages.user_missing));
        return;
      }

      emit(LoginDone(user));
    } catch (error, stackTrace) {
      await _logger.logError(
        error,
        message: 'USER LOGIN EVENT ERROR',
        stackTrace: stackTrace,
      );
      emit(const LoginError(exception: Messages.generic_error));
    }
  }

  final LoginService _loginService;
}
