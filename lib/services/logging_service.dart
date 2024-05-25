// services/logging_service.dart

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// Service for logging purposes
class LoggingService {
  /// Private constructor
  const LoggingService._();

  /// One and only instance of ``[LoggingService]``
  static const instance = LoggingService._();

  static final _crashlytics = FirebaseCrashlytics.instance;

  /// Log in debug mode
  void debugLog(
    String message, {
    int? sequenceNumber,
    int level = 0,
    String name = '',
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (!kDebugMode) return;
    log(
      message,
      time: DateTime.now(),
      sequenceNumber: sequenceNumber,
      level: level,
      name: name,
      zone: zone,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Track and record exceptions and failures
  Future<void> logError(
    Object? error, {
    String? message,
    StackTrace? stackTrace,
  }) async {
    if (error is FlutterErrorDetails) {
      final sb = StringBuffer()
        ..writeln('FlutterError.onError called')
        ..write('SUMMARY:\t')
        ..writeln(error.summary)
        ..write('EXCEPTION:\t')
        ..writeln(error.exception)
        ..write('STACK:\t')
        ..writeln(error.stack)
        ..write('LIBRARY:\t')
        ..writeln(error.library);
      debugLog(sb.toString());
      sb.clear();

      await _crashlytics.recordFlutterFatalError(error);
      return;
    }

    debugLog(
      message ?? 'error message not provided',
      error: error,
      stackTrace: stackTrace,
      level: 1200,
    );

    if (stackTrace == null) {
      await _crashlytics.log(
        '${message ?? "An error occurred without a stacktrace"}\n\n$error',
      );
      return;
    }

    await _crashlytics.recordError(
      error,
      stackTrace,
      reason: message,
      fatal: true,
    );
  }

  /// Convert json to a readable form
  Future<String> prettyPrint(Object? json) async {
    try {
      return const JsonEncoder.withIndent('  ').convert(
        json is String?
            ? json != null
                ? jsonDecode(json)
                : ''
            : json,
      );
    } catch (error, trace) {
      await logError(
        error,
        message: 'Unable to pretty print response',
        stackTrace: trace,
      );
      return json.toString();
    }
  }
}
