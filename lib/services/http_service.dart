// services/http_service.dart

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:task_manager_app/constants/constants.dart';
import 'package:task_manager_app/services/logging_service.dart';

typedef HTTPResponseSchema<T> = ({String? error, T? data});

/// Base service for making HTTP requests
@immutable
abstract class HTTPService<T> with EquatableMixin {
  /// Create a new [HTTPService].
  ///
  /// Provide an optional [Client] to facilitate HTTP calls
  HTTPService({Client? client, String? host})
      : _httpClient = client ?? Client(),
        _apiBaseUrl = host ?? '';

  final Client _httpClient;

  final String _apiBaseUrl;

  final logger = LoggingService.instance;

  /// Convenience method for making HTTP GET requests
  Future<HTTPResponseSchema<T>> get({
    String baseUrl = '',
    String unEncodedPath = '',
    Object? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      request(
        method: 'GET',
        baseUrl: baseUrl,
        unEncodedPath: unEncodedPath,
        data: data,
        headers: headers,
        queryParameters: queryParameters,
      );

  /// Convenience method for making HTTP POST requests
  Future<HTTPResponseSchema<T>> post({
    String baseUrl = '',
    String unEncodedPath = '',
    Object? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      request(
        method: 'POST',
        baseUrl: baseUrl,
        unEncodedPath: unEncodedPath,
        data: data,
        headers: headers,
        queryParameters: queryParameters,
      );

  /// Convenience method for making HTTP PUT requests
  Future<HTTPResponseSchema<T>> put({
    String baseUrl = '',
    String unEncodedPath = '',
    Object? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      request(
        method: 'PUT',
        baseUrl: baseUrl,
        unEncodedPath: unEncodedPath,
        data: data,
        headers: headers,
        queryParameters: queryParameters,
      );

  /// Convenience method for making HTTP DELETE requests
  Future<HTTPResponseSchema<T>> delete({
    String baseUrl = '',
    String unEncodedPath = '',
    Object? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      request(
        method: 'DELETE',
        baseUrl: baseUrl,
        unEncodedPath: unEncodedPath,
        data: data,
        headers: headers,
        queryParameters: queryParameters,
      );

  /// Base method to handle HTTP calls
  Future<HTTPResponseSchema<T>> request({
    required String method,
    String baseUrl = '',
    String unEncodedPath = '',
    Object? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (baseUrl.isEmpty && unEncodedPath.isEmpty) {
        return const (error: Messages.url_missing, data: null);
      }

      final host = baseUrl.isEmpty ? _apiBaseUrl : baseUrl;
      if (host.isEmpty) {
        return const (error: Messages.url_missing, data: null);
      }
      final uri = Uri.https(host, unEncodedPath, queryParameters);

      final response = await switch (method.toUpperCase()) {
        'POST' => _httpClient.post(
            uri,
            body: jsonEncode(data ?? const {}),
            headers: headers,
          ),
        'GET' => _httpClient.get(
            uri,
            headers: headers,
          ),
        'PUT' => _httpClient.put(
            uri,
            body: jsonEncode(data ?? const {}),
            headers: headers,
          ),
        'DELETE' => _httpClient.delete(
            uri,
            body: jsonEncode(data ?? const {}),
            headers: headers,
          ),
        _ => null,
      };

      final output = await parseResponse(response, _apiBaseUrl, method);
      return switch (output.error) {
        null || '' => await process(output.data, method, unEncodedPath),
        _ => (error: output.error, data: null),
      };
    } catch (ex, stackTrace) {
      await logger.logError(ex, stackTrace: stackTrace);
      return const (error: Messages.request_error, data: null);
    }
  }

  /// Analyze and decipher the response from HTTP requests
  Future<HTTPResponseSchema<Map<String, Object?>>> parseResponse(
    Response? response,
    String apiBaseUrl,
    String method,
  );

  /// Convert the data from HTTP requests to form usable in the application
  Future<HTTPResponseSchema<T>> process(
    Object? payload,
    String method,
    String unEncodedPath,
  );

  @override
  List<Object?> get props => [_httpClient, _apiBaseUrl];
}
