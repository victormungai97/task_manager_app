// services/login_service.dart

import 'package:http/http.dart' as http;
import 'package:task_manager_app/constants/constants.dart';
import 'package:task_manager_app/models/models.dart';
import 'package:task_manager_app/services/api_service.dart';
import 'package:task_manager_app/services/http_service.dart';

/// Service to facilitate signing in of a user
class LoginService extends APIService<UserModel> {
  /// Creates a new [LoginService] instance.
  ///
  /// Pass an optional [http.Client] to handle the HTTP calls
  ///
  factory LoginService({http.Client? client, String? host}) =>
      _instance ??= LoginService._(client: client, host: host);

  /// Private constructor
  LoginService._({super.client, super.host});

  // Single instance of login service
  static LoginService? _instance;

  /// Method to carry out logging in of a user
  Future<HTTPResponseSchema<UserModel>> signIn(
    String username,
    String password,
  ) async =>
      post(
        data: {
          LoginRequestKeys.username: username,
          LoginRequestKeys.password: password,
          LoginRequestKeys.validity: 30, // minutes
        },
        unEncodedPath: '${AuthURLs.authPrefix}/${AuthURLs.signUserIn}',
      );

  @override
  Future<HTTPResponseSchema<UserModel>> process(
    Object? payload,
    String method,
    String unEncodedPath,
  ) async {
    if (payload is! Map<String, Object?>) {
      return const (data: null, error: Messages.invalid_data);
    }

    final json = payload;
    final verb = method.toUpperCase();
    const loginPath = '${AuthURLs.authPrefix}/${AuthURLs.signUserIn}';

    if (verb == 'POST' && unEncodedPath == loginPath) {
      return (data: UserModel.fromJson(json), error: null);
    }

    return const (data: null, error: Messages.completion_exception);
  }
}
