// constants/strings/keys.dart

part of 'strings.dart';

/// Keys for metadata associated with the application

abstract final class ApplicationModelKeys {
  /// Key for application display name
  static const displayName = 'display_name';

  /// Key for package name
  static const packageName = 'package_name';

  /// Key for developer of the application
  static const author = 'author';

  /// Key for application version
  static const appVersion = 'app_version';

  /// Key for identifier of the currently installed application
  static const installationId = 'app_install_id';
}

/// Keys utilized when signing in a user

abstract class LoginRequestKeys {
  /// Key for unique handle of user
  static const username = 'username';

  /// Key for user's admittance secret word
  static const password = 'password';

  /// Key for period of authentication token validity
  static const validity = 'expiresInMins';
}

/// Keys defining various aspects of a user in system

abstract class UserModelKeys {
  /// Key for user's id
  static const id = 'id';

  /// Key for unique handle of user
  static const userName = 'username';

  /// Key for email address
  static const emailAddress = 'email';

  /// Key for user's official first name
  static const firstName = 'firstName';

  /// Key for user's official last name
  static const lastName = 'lastName';

  /// Key for gender
  static const gender = 'gender';

  /// Key for display picture
  static const profileImage = 'image';

  /// Key for authentication token for logged in user
  static const authToken = 'token';
}

/// Keys used in local persistent storage

abstract class LocalDatabaseKeys {
  /// Key for holding prior logged in usernames
  static const usernames = 'usernames';
}
