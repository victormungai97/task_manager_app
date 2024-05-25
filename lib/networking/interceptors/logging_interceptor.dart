// networking/interceptors/logging_interceptor.dart

part of 'interceptors.dart';

/// Custom Interceptor for keeping track of and recording HTTP calls

class LoggingInterceptor extends InterceptorContract {
  static const _logger = LoggingService.instance;

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    if (request is Request) {
      final headers = await _logger.prettyPrint(request.headers);
      final body = await _logger.prettyPrint(request.body);
      _logger
        ..debugLog('\n=============REQUEST=============\n')
        ..debugLog('url >>>>>>>>>>>>>>>> ${request.url}')
        ..debugLog('body >>>>>>>>>>>>>>>> $body')
        ..debugLog('headers >>>>>>>>>>>>>>>> $headers')
        ..debugLog('method >>>>>>>>>>>>>>>> ${request.method}');
    }
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({
    required BaseResponse response,
  }) async {
    if (response is Response) {
      final headers = await _logger.prettyPrint(response.headers);
      final body = await _logger.prettyPrint(response.body);
      final httpCode = response.statusCode;
      _logger
        ..debugLog('\n=============RESPONSE=============\n')
        ..debugLog('statusCode >>>>>>>>>>>>>>>> $httpCode')
        ..debugLog('headers >>>>>>>>>>>>>>>> $headers')
        ..debugLog('body >>>>>>>>>>>>>>>> $body');
    }
    return response;
  }
}
