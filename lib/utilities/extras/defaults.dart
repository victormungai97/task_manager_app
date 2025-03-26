// utilities/extras/defaults.dart

import 'package:flutter/widgets.dart';
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

/// Function to retrieve name of a navigation route
String? defaultNameExtractor(RouteSettings settings) => settings.name;

/// Function that defines that only [PageRoute]s should be tracked
bool defaultRouteFilter(Route<dynamic>? route) => route is PageRoute;
