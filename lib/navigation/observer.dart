// navigation/observer.dart

part of 'navigation.dart';

/// A [Navigator] observer for notifying and recording page changes

class CustomRouteObserver extends RouteObserver<ModalRoute<void>> {
  /// Creates a [CustomRouteObserver]
  ///
  /// Provide a callback to facilitate tracking of the navigation
  CustomRouteObserver([this._onNavigated]);

  final FutureOr<void> Function(String? route)? _onNavigated;

  void _sendScreenView(PageRoute<dynamic> route) {
    final screenName = route.settings.name;
    Timer.run(() async => _onNavigated?.call(screenName));
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) _sendScreenView(route);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) _sendScreenView(newRoute);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      _sendScreenView(previousRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      _sendScreenView(previousRoute);
    }
  }
}
