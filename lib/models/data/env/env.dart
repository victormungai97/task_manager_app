// models/data/env/env.dart

import 'package:envied/envied.dart';

part 'env.g.dart';

/// Define environment variables used by the application

@Envied(path: '.flutterenv')
final class EnvModel {
  @EnviedField(varName: 'APPLICATION_AUTHOR', optional: true)
  static const String? applicationAuthor = _EnvModel.applicationAuthor;
}
