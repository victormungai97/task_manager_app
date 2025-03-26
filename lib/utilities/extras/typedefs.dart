// utilities/extras/typedefs.dart

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_manager_app/widgets/listenables/listenables.dart'
    show HiveListenableBuilder;
import 'package:task_manager_app/widgets/responsiveness/responsiveness.dart'
    show SizingInformation;

/// Exposes a callback for retrieving and logging exceptions that occur in app
typedef ErrorFn = FutureOr<void> Function(
  Object? error, {
  String? message,
  StackTrace? stackTrace,
});

/// Exposes a callback for general logging functionality
typedef LogFn = FutureOr<void> Function(
  String message, {
  int? sequenceNumber,
  int? level,
  String? name,
  Zone? zone,
  Object? error,
  StackTrace? stackTrace,
});

/// Builds a [Widget] when given a concrete value of a [Box<T>].
///
/// If the `child` parameter provided to the [HiveListenableBuilder] is not
/// null, the same `child` widget is passed back to this [ValueWidgetBuilder]
/// and should typically be incorporated in the returned widget tree.
///
/// See also:
///
///  * [HiveListenableBuilder], a widget which invokes this builder each time
///    a [Box] changes value.
typedef BoxWidgetBuilder<T> = Widget Function(Box<T> box, Widget? child);

/// Define a schema for responses to HTTP requests
typedef HTTPResponseSchema<T> = ({String? error, T? data});

/// The signature of the [LayoutBuilder] builder function.
typedef ResponsiveLayoutWidgetBuilder = Widget Function(
  BuildContext context,
  SizingInformation sizingInformation,
);

/// Function called to facilitate when a screen transition occurs
typedef PageNavigationCallback = FutureOr<void> Function(String? routeName);

/// Signature for a function that extracts a screen name from [RouteSettings].
///
/// Usually, the route name is not a plain string, and it may contains some
/// unique ids that makes it difficult to aggregate over them in Firebase
/// Analytics.
typedef ScreenNameExtractor = String? Function(RouteSettings settings);

/// [RouteFilter] allows to filter out routes that should not be tracked.
///
/// By default, only [PageRoute]s are tracked.
typedef RouteFilter = bool Function(Route<dynamic>? route);
