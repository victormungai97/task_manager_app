// utilities/extensions/build_context.dart

part of 'extensions.dart';

/// Extension to ``[BuildContext]`` class to append navigational functionalities

extension BuildContextX on BuildContext {
  /// Alternate navigation mechanism to route based on platform
  void navigate(String location, {Object? extra}) {
    if (kIsWeb) {
      go(location, extra: extra);
    } else {
      push(location, extra: extra);
    }
  }

  /// Alternate navigation mechanism to replace current page based on platform
  void navigateReplace(String destination, {Object? extra}) {
    if (kIsWeb) {
      go(destination, extra: extra);
    } else {
      pushReplacement(destination, extra: extra);
    }
  }

  /// Alternate navigation mechanism to named route based on platform
  void navigateNamed(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    if (kIsWeb) {
      goNamed(
        name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
        extra: extra,
      );
    } else {
      pushNamed(
        name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
        extra: extra,
      );
    }
  }
}
