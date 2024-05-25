// navigation/router.dart

part of 'navigation.dart';

/// Subclass of [GoRouter] which facilitates navigation in this Flutter app
/// by implementing Navigation API 2.0

class CustomRouter extends GoRouter {
  /// Creates a ``[CustomRouter]``
  CustomRouter(CustomRouteObserver routeObserver)
      : super(
          // Show debugging logs if app is in debug.
          debugLogDiagnostics: kDebugMode,

          // Set all routes to be used
          routes: <GoRoute>[
            GoRoute(
              path: Routes.root,
              builder: (context, state) => const LoginPage(),
            ),
            GoRoute(
              path: Routes.login,
              builder: (context, state) => const LoginPage(),
            ),
          ],

          // Declare first route to be rendered when app starts
          initialLocation: Routes.root,

          // Custom navigation observer(s)
          observers: [routeObserver],
        );
}
