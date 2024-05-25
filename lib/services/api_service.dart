// services/api_service.dart

import 'dart:convert';

import 'package:http_interceptor/http_interceptor.dart';
import 'package:task_manager_app/constants/constants.dart';
import 'package:task_manager_app/services/http_service.dart';

/// Service to handle requests to the server REST API
abstract class APIService<T> extends HTTPService<T> {
  /// Creates a new [APIService] instance
  ///
  /// Pass an optional [Client] for handling HTTP calls
  APIService({super.client, String? host}) : super(host: host ?? Urls.live);

  @override
  Future<HTTPResponseSchema<Map<String, Object?>>> parseResponse(
    Response? response,
    String apiBaseUrl,
    String method,
  ) async {
    try {
      final body = response?.body;
      if (response == null || body == null || body.isEmpty) {
        return const (data: null, error: Messages.server_not_responding);
      }

      Object? data;
      try {
        data = jsonDecode(body);
      } on FormatException catch (e, sT) {
        await logger.logError(e, stackTrace: sT);
        data = body;
      }

      final statusCode = response.statusCode;
      final isSuccessful = statusCode >= 200 && statusCode < 400;

      if (!isSuccessful) {
        if (data is! Map<String, dynamic>) {
          return const (data: null, error: Messages.unexpected_response);
        }
        if (data.containsKey('message')) {
          final message = data['message'];
          if (message is String) return (data: null, error: message);
        }
        return const (data: null, error: Messages.indeterminate_response);
      }

      if (data is! Map<String, dynamic>) {
        return const (data: null, error: Messages.unexpected_response);
      }

      return (data: data, error: null);
    } on FormatException catch (e, trace) {
      await logger.logError(
        e,
        stackTrace: trace,
        message: 'Unable to parse json data',
      );
      return const (data: null, error: Messages.invalid_data);
    } catch (error, stackTrace) {
      await logger.logError(
        error,
        stackTrace: stackTrace,
        message: 'Unable to parse HTTP response',
      );
      return const (data: null, error: Messages.generic_error);
    }
  }
}
