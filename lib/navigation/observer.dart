// navigation/observer.dart

part of 'navigation.dart';

String? defaultNameExtractor(RouteSettings settings) => settings.name;

bool defaultRouteFilter(Route<dynamic>? route) => route is PageRoute;

/// A [Navigator] observer for notifying and recording when the
/// currently active [ModalRoute] changes.
///
/// When a route is pushed or popped, and if ``routeFilter`` is true,
/// ``nameExtractor`` is used to extract a name  from [RouteSettings] of the now
/// active route and that name is sent to Firebase.
///
/// The following operations will result in sending a screen view event:
/// ```dart
/// Navigator.pushNamed(context, '/contact/123');
///
/// Navigator.push<void>(context, MaterialPageRoute(
///   settings: RouteSettings(name: '/contact/123'),
///   builder: (_) => ContactDetail(123)));
///
/// Navigator.pushReplacement<void>(context, MaterialPageRoute(
///   settings: RouteSettings(name: '/contact/123'),
///   builder: (_) => ContactDetail(123)));
///
/// Navigator.pop(context);
/// ```
///
/// To use it, add it to the `navigatorObservers` of your [Navigator], e.g. if
/// you're using a [MaterialApp]:
/// ```dart
/// MaterialApp(
///   home: MyAppHome(),
///   navigatorObservers: [
///     CustomRouteObserver(onNavigated: (String? route) {}),
///   ],
/// );
/// ```
///
/// You can also track screen views within your [ModalRoute] by implementing
/// [RouteAware<ModalRoute<dynamic>>] and subscribing it to [CustomRouteObserver]. See the
/// [RouteObserver<ModalRoute<dynamic>>] docs for an example.

class CustomRouteObserver extends RouteObserver<ModalRoute<void>> {
  /// Creates a [CustomRouteObserver] that has an optional callback
  /// to facilitate tracking of the navigation
  ///
  /// When a route is pushed or popped, [nameExtractor] is used to extract a
  /// name from [RouteSettings] of the now active route and that name is sent for
  /// processing. Defaults to [defaultNameExtractor].
  CustomRouteObserver({
    PageNavigationCallback? onNavigated,
    RouteFilter? routeFilter,
    ScreenNameExtractor? nameExtractor,
  })  : _onNavigated = onNavigated,
        _nameExtractor = nameExtractor ?? defaultNameExtractor,
        _routeFilter = routeFilter ?? defaultRouteFilter;

  final PageNavigationCallback? _onNavigated;
  final RouteFilter _routeFilter;
  final ScreenNameExtractor _nameExtractor;

  void _sendScreenView(Route<dynamic> route) {
    final screenName = _nameExtractor(route.settings);
    Timer.run(() async => _onNavigated?.call(screenName));
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (_routeFilter(route)) _sendScreenView(route);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null && _routeFilter(newRoute)) _sendScreenView(newRoute);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    if (previousRoute != null &&
        _routeFilter(previousRoute) &&
        _routeFilter(route)) {
      _sendScreenView(previousRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute != null &&
        _routeFilter(previousRoute) &&
        _routeFilter(route)) {
      _sendScreenView(previousRoute);
    }
  }
}
