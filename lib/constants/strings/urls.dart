// constants/strings/urls.dart

part of 'strings.dart';

/// Class containing the base URLs for REST API calls

class Urls {
  /// Url for testing API requests
  static const dummy = 'dummyjson.com';

  /// Url for API requests in production
  static const live = '';
}

/// Endpoints for authentication and entry

class AuthURLs {
  /// Prefix for authentication endpoints
  static const authPrefix = '/auth';

  /// Endpoint to sign user in
  static const signUserIn = '/login';

  /// Endpoint to get current logged in user
  static const getCurrentUser = '/me';

  /// Endpoint to update token used for authentication
  static const refreshAuthToken = '/refresh';
}
