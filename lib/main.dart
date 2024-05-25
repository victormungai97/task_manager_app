// main.dart

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:task_manager_app/app.dart';
import 'package:task_manager_app/blocs/blocs.dart';
import 'package:task_manager_app/firebase_options.dart';
import 'package:task_manager_app/networking/networking.dart';
import 'package:task_manager_app/services/logging_service.dart';
import 'package:task_manager_app/services/login_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const logger = LoggingService.instance;

  // Initialize Firebase configuration
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // set up persistent offline storage
  final appDirectory = kIsWeb ? null : await getTemporaryDirectory();
  await Hive.initFlutter(appDirectory?.path).then(
    (_) async {
      await Future.wait([Hive.openBox<Object?>('app_data')])
          .then((_) => logger.debugLog('Hive successfully setup', level: 800))
          .catchError(
            (Object? error, StackTrace stackTrace) => logger.logError(
              error,
              message: 'Hive boxes opening Failure',
              stackTrace: stackTrace,
            ),
          );
    },
  ).catchError(
    (Object? error, StackTrace stackTrace) {
      logger.logError(
        error,
        message: 'Hive setup Failure',
        stackTrace: stackTrace,
      );
    },
  );

  /* Configure application wide crash handlers */
  // Pass all uncaught "fatal" errors thrown within the Flutter framework
  FlutterError.onError = logger.logError;
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework
  PlatformDispatcher.instance.onError = (error, stackTrace) {
    logger.logError(error, stackTrace: stackTrace);
    return true;
  };

  /* Configure BLoC setup */
  // Initialize storage interface
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  // Observe state changes
  Bloc.observer = const CustomBlocObserver();

  final interceptedClient = InterceptedClient.build(
    retryPolicy: ApiRequestRetryPolicy(),
    interceptors: [ApiInterceptor(), LoggingInterceptor()],
    client: httpClient,
    requestTimeout: const Duration(seconds: 30),
  );

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => LoginService(client: interceptedClient),
        ),
      ],
      child: const TaskManagerApp(),
    ),
  );
}
