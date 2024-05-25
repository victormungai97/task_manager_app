// networking/platform/web/http.dart

part of 'web.dart';

/// Determine the appropriate [Client] to use for different platforms
Client get httpClient => FetchClient(mode: RequestMode.cors);
