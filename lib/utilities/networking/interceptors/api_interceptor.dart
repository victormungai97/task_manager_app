// networking/interceptors/api_interceptor.dart

part of 'interceptors.dart';

/// ``[InterceptorContract]`` to handle server REST API request
class ApiInterceptor extends BaseInterceptor {
  /// Create an instance of [ApiInterceptor]
  ApiInterceptor({super.onError});

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    try {
      final segments = request.url.pathSegments;
      final baseUrl = request.url.host;
      final headers = Map<String, String>.from(request.headers);

      if (baseUrl == Urls.dummy) {
        headers[io.HttpHeaders.contentTypeHeader] = 'application/json';

        final decodedPath = segments.join('/');

        const loginPath = '${AuthURLs.authPrefix}${AuthURLs.signUserIn}';
        if (decodedPath == loginPath.strip('/')) {}
      }

      return request.copyWith(headers: headers);
    } catch (error, stackTrace) {
      await onError(error, stackTrace: stackTrace);
    }
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({
    required BaseResponse response,
  }) async {
    return response;
  }
}
