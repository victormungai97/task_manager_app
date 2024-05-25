// networking/platform/unsupported.dart

import 'dart:io' as io;

import 'package:http/http.dart';
import 'package:http/io_client.dart';

/// Determine the appropriate [Client] to use for different platforms
Client get httpClient {
  return IOClient(io.HttpClient()..userAgent = 'Task Manager Agent');
}
