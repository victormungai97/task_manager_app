// networking/policies/retry.dart

part of 'policies.dart';

/// Custom [RetryPolicy] for facilitating retries around Task Manager REST API requests
class ApiRequestRetryPolicy implements RetryPolicy {
  /// Construct an instance of [ApiRequestRetryPolicy]
  const ApiRequestRetryPolicy({ErrorFn? onError})
      : _onError = onError ?? Logger.logError;

  final ErrorFn _onError;

  @override
  int get maxRetryAttempts => 2;

  @override
  Future<bool> shouldAttemptRetryOnException(
    Exception reason,
    BaseRequest request,
  ) async {
    await _onError(
      reason,
      message: 'Error occurred while carrying out request $request',
    );

    return false;
  }

  @override
  Duration delayRetryAttemptOnException({required int retryAttempt}) {
    // Stagger retry attempts to prevent overloading API server or hitting API rate limits
    return const Duration(milliseconds: 250) * (retryAttempt ^ 2);
  }

  @override
  Future<bool> shouldAttemptRetryOnResponse(BaseResponse response) async {
    try {} catch (error, stack) {
      await _onError(
        error,
        stackTrace: stack,
        message: 'Error determining whether to retry request',
      );
    }
    return false;
  }

  @override
  Duration delayRetryAttemptOnResponse({required int retryAttempt}) {
    // Stagger retry attempts to prevent overloading API server or hitting API rate limits
    return const Duration(milliseconds: 250) * (retryAttempt ^ 2);
  }
}
