// services/login_service.dart

import 'package:task_manager_app/constants/constants.dart';
import 'package:task_manager_app/models/models.dart';
import 'package:task_manager_app/services/api_service.dart';
import 'package:task_manager_app/services/http_service.dart';

class LoginService extends APIService<UserModel> {
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
