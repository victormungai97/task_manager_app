// main.dart

import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mobile_device_identifier/mobile_device_identifier.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_app/app.dart';
import 'package:task_manager_app/blocs/blocs.dart';
import 'package:task_manager_app/constants/constants.dart';
import 'package:task_manager_app/firebase_options.dart';
import 'package:task_manager_app/models/models.dart';
import 'package:task_manager_app/networking/networking.dart';
import 'package:task_manager_app/utilities/extras/logger.dart';
import 'package:uuid/uuid.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var installationId = (const Uuid()).v4();
  try {
    final deviceId = await MobileDeviceIdentifier().getDeviceId();
    if (deviceId == null) {
      Logger.debugLog('Unknown platform version');
    } else {
      installationId = deviceId;
    }
  } on PlatformException catch (error, stackTrace) {
    Logger.debugLog(
      'Failed to get platform version.',
      error: error,
      stackTrace: stackTrace,
    );
  }

  // Initialize Firebase configuration
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
    await FirebaseCrashlytics.instance.setCustomKey(
      ApplicationModelKeys.installationId,
      installationId,
    );
  } catch (error, stackTrace) {
    Logger.debugLog(
      'Failed to initialize Firebase',
      error: error,
      stackTrace: stackTrace,
    );
  }

  // set up persistent offline storage
  final appDirectory = kIsWeb ? null : await getTemporaryDirectory();
  await Hive.initFlutter(appDirectory?.path).then(
    (_) async {
      await Future.wait([Hive.openBox<Object?>('app_data')])
          .then((_) => Logger.debugLog('Hive successfully setup', level: 800))
          .catchError(
            (Object? error, StackTrace stackTrace) => Logger.logError(
              error,
              message: 'Hive boxes opening Failure',
              stackTrace: stackTrace,
            ),
          );
    },
  ).catchError(
    (Object? error, StackTrace stackTrace) {
      Logger.logError(
        error,
        message: 'Hive setup Failure',
        stackTrace: stackTrace,
      );
    },
  );

  /* Configure application wide crash handlers */
  // Pass all uncaught "fatal" errors thrown within the Flutter framework
  FlutterError.onError = Logger.logError;
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework
  PlatformDispatcher.instance.onError = (error, stackTrace) {
    Timer.run(() async => Logger.logError(error, stackTrace: stackTrace));
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

  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (_) => InterceptedClient.build(
            interceptors: [ApiInterceptor(), LoggingInterceptor()],
            retryPolicy: const ApiRequestRetryPolicy(),
            client: httpClient,
            requestTimeout: const Duration(seconds: 30),
          ),
        ),
        FutureProvider<ApplicationModel>(
          create: (_) async {
            final packageInfo = await PackageInfo.fromPlatform();

            return ApplicationModel(
              name: packageInfo.appName,
              package: packageInfo.packageName,
              version: '${packageInfo.version}+${packageInfo.buildNumber}',
              author: EnvModel.applicationAuthor,
              installationID: installationId,
            );
          },
          initialData: const ApplicationModel(),
        ),
      ],
      child: const TaskManagerApp(),
    ),
  );
}
