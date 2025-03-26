// utilities/extras/logger.dart

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:task_manager_app/utilities/extensions/extensions.dart';
import 'package:task_manager_app/utilities/extras/typedefs.dart';

/// Function to printing errors
/// Useful for testing
ErrorFn defaultErrorLog = (
  Object? error, {
  String? message,
  StackTrace? stackTrace,
}) {
  debugPrint(message ?? 'An error occurred');
  debugPrint(error.toString());
  debugPrintStack(stackTrace: stackTrace);
};

/// Utility for logging purposes
class Logger {
  /// Private constructor
  const Logger._();

  /// Log in debug mode
  static void debugLog(
    String message, {
    int? sequenceNumber,
    int? level,
    String? name,
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (!kDebugMode) return;
    log(
      message,
      time: DateTime.now(),
      sequenceNumber: sequenceNumber,
      level: level ?? 0,
      name: name ?? '',
      zone: zone,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static Future<void> setDefaultLogParameters(
    Map<String, Object?> parameters,
  ) async {
    if (parameters.isEmpty) return;
    debugLog(await prettyPrint(parameters));
    await FirebaseAnalytics.instance.setDefaultEventParameters(parameters);
  }

  /// Track and record exceptions and failures
  static Future<void> logError(
    Object? error, {
    String? message,
    StackTrace? stackTrace,
  }) async {
    final crashlytics = FirebaseCrashlytics.instance;

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

      await crashlytics.recordFlutterFatalError(error);
      return;
    }

    if (error is PlatformException) {
      final trace = error.stacktrace;
      stackTrace = switch (trace) {
        null || '' => stackTrace,
        _ => StackTrace.fromString(trace),
      };
      final sb = StringBuffer()
        ..writeln('PLATFORM EXCEPTION!')
        ..writeln('CODE!\t${error.code}')
        ..writeln('MESSAGE!\t${error.message ?? message}')
        ..writeln('DETAILS!\t${error.details}');
      message = sb.toString();
      sb.clear();
    }

    debugLog(
      message ?? 'error message not provided',
      error: error,
      stackTrace: stackTrace,
      level: 1200,
    );

    if (stackTrace == null) {
      await crashlytics.log(
        '${message ?? "An error occurred without a stacktrace"}\n\n$error',
      );
      return;
    }

    await crashlytics.recordError(
      error,
      stackTrace,
      reason: message,
      fatal: true,
    );
  }

  static Future<void> logEvent(
    String event,
    Map<String, Object?> parameters,
  ) async {
    final analytics = FirebaseAnalytics.instance;

    if (!event.exists) {
      await logError(
        'Log event name not provided',
        message: 'ANALYTICS LOG EVENT ERROR',
      );
      return;
    }

    await analytics.logEvent(
      name: event,
      parameters: {
        'time':
            "${DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now().toUtc())} GMT",
        if (parameters.isNotEmpty) ...filterOutNulls(parameters),
      },
    ).catchError((Object error, StackTrace? stackTrace) async {
      await logError(
        error,
        stackTrace: stackTrace,
        message: '${event.toUpperCase()} ANALYTICS LOG EVENT ERROR',
      );
    });
  }

  /// Convert json to a readable form
  static Future<String> prettyPrint(Object? json) async {
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
