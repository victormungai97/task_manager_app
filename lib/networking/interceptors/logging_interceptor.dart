// networking/interceptors/logging_interceptor.dart

part of 'interceptors.dart';

/// Custom Interceptor for keeping track of and recording HTTP calls

class LoggingInterceptor extends BaseInterceptor {
  /// Create an instance of [LoggingInterceptor]
  LoggingInterceptor({super.onError});

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    if (request is Request) {
      final headers = await Logger.prettyPrint(request.headers);
      final body = await Logger.prettyPrint(request.body);
      final sb = StringBuffer('\n')
        ..writeln('=============REQUEST=============')
        ..writeln('url >>>>>>>>>>>>>>>> ${request.url}')
        ..writeln('body >>>>>>>>>>>>>>>> $body')
        ..writeln('headers >>>>>>>>>>>>>>>> $headers')
        ..writeln('method >>>>>>>>>>>>>>>> ${request.method}');
      await log(sb.toString());
      sb.clear();
    }
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({
    required BaseResponse response,
  }) async {
    if (response is Response) {
      final headers = await Logger.prettyPrint(response.headers);
      final body = await Logger.prettyPrint(response.body);
      final httpCode = response.statusCode;
      final sb = StringBuffer('\n')
        ..writeln('=============RESPONSE=============')
        ..writeln('statusCode >>>>>>>>>>>>>>>> $httpCode')
        ..writeln('headers >>>>>>>>>>>>>>>> $headers')
        ..writeln('body >>>>>>>>>>>>>>>> $body');

      await log(sb.toString());
      sb.clear();
    }
    return response;
  }
}
