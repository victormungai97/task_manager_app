// app.dart

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_app/constants/constants.dart';
import 'package:task_manager_app/models/models.dart';
import 'package:task_manager_app/navigation/navigation.dart';
import 'package:task_manager_app/utilities/extensions/extensions.dart';
import 'package:task_manager_app/utilities/extras/extras.dart';

/// This is the starting point for the widget tree

class TaskManagerApp extends StatefulHookWidget {
  /// Creates a ``[TaskManagerApp]`` instance
  const TaskManagerApp({super.key});

  @override
  State<TaskManagerApp> createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  @override
  Widget build(BuildContext context) {
    final application = context.watch<ApplicationModel>();
    final defaultAppDetailsFuture = useMemoized(
      () async => _setDefaultApplicationDetails(application),
      [application],
    );

    return FutureBuilder(
      builder: (context, snapshot) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          routerConfig: CustomRouter(
            CustomRouteObserver(
              onNavigated: (routeName) async => Logger.logEvent(
                'screen_view',
                {'screen_name': routeName},
              ),
            ),
          ),
          title: application.name,
        );
      },
      future: defaultAppDetailsFuture,
    );
  }

  Future<void> _setDefaultApplicationDetails(ApplicationModel details) async {
    if (!details.name.exists) return;
    await Logger.setDefaultLogParameters(details.toJson());
  }

  @override
  void dispose() {
    Timer.run(() async {
      await Future.wait([
        Hive.openBox<Object?>('app_data'),
      ]).then(
        (boxes) async {
          await Future.wait(boxes.map((box) async => box.close()))
              .then((_) => debugPrint('Hive boxes successfully closed'))
              .catchError(
            (Object? error, StackTrace stackTrace) {
              debugPrint('Hive boxes closing Failure');
              debugPrint(error.toString());
              debugPrintStack(stackTrace: stackTrace);
            },
          );
        },
      );
    });
    super.dispose();
  }
}
