// networking/interceptors/api_interceptor.dart

part of 'interceptors.dart';

class ApiInterceptor extends InterceptorContract {
  //static const _logger = LoggingService.instance;

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    final baseUrl = request.url.pathSegments;
    print('BASE URL!!\t$baseUrl');
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({
    required BaseResponse response,
  }) async {
    return response;
  }
}
