// networking/policies/retry.dart

part of 'policies.dart';

/// Custom [RetryPolicy] for facilitating retries around Task Manager REST API requests
class ApiRequestRetryPolicy implements RetryPolicy {
  static const _logger = LoggingService.instance;

  @override
  int get maxRetryAttempts => 2;

  @override
  Future<bool> shouldAttemptRetryOnException(
    Exception reason,
    BaseRequest request,
  ) async {
    await _logger.logError(
      reason,
      message: 'Error occurred while carrying out request $request',
    );

    return false;
  }

  @override
  Future<bool> shouldAttemptRetryOnResponse(BaseResponse response) async {
    try {} catch (error, stack) {
      await _logger.logError(
        error,
        stackTrace: stack,
        message: 'Error determining whether to retry request',
      );
    }
    return false;
  }
}
