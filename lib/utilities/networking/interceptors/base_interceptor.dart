// networking/interceptors/base_interceptor.dart

part of 'interceptors.dart';

/// Sub class interface of ``[InterceptorContract]`` to provide custom
/// functionality across the application's interceptors

@immutable
abstract class BaseInterceptor extends InterceptorContract {
  BaseInterceptor({ErrorFn? onError, LogFn? log})
      : _onError = onError ?? Logger.logError,
        _log = log ?? Logger.debugLog;

  final ErrorFn _onError;
  final LogFn _log;

  /// Callback to handle exceptions that may occur in the application
  ErrorFn get onError => _onError;

  /// Callback to print out generic information
  LogFn get log => _log;
}
