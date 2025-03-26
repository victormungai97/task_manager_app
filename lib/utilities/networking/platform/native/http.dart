// networking/platform/native/http.dart

part of 'native.dart';

const _maxCacheSize = 2 * 1024 * 1024;
const _userAgent = 'Task Manager Agent';

/// Determine the appropriate [Client] to use for different platforms
Client get httpClient {
  if (io.Platform.isAndroid) {
    final engine = CronetEngine.build(
      cacheMode: CacheMode.memory,
      cacheMaxSize: _maxCacheSize,
      userAgent: _userAgent,
    );
    return CronetClient.fromCronetEngine(engine);
  }
  if (io.Platform.isIOS || io.Platform.isMacOS) {
    final config = URLSessionConfiguration.ephemeralSessionConfiguration()
      ..cache = URLCache.withCapacity(memoryCapacity: _maxCacheSize)
      ..httpAdditionalHeaders = {'User-Agent': _userAgent};
    return CupertinoClient.fromSessionConfiguration(config);
  }
  return IOClient(io.HttpClient()..userAgent = _userAgent);
}
