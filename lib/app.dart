// app.dart

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_manager_app/blocs/blocs.dart';
import 'package:task_manager_app/constants/constants.dart';
import 'package:task_manager_app/navigation/navigation.dart';
import 'package:task_manager_app/services/logging_service.dart';

/// This is the starting point for the widget tree

class TaskManagerApp extends StatefulWidget {
  /// Creates a ``[TaskManagerApp]`` instance
  const TaskManagerApp({super.key});

  @override
  State<TaskManagerApp> createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  static final log = LoggingService.instance.debugLog;

  final _pagesBloc = PagesBloc();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _pagesBloc),
      ],
      child: MaterialApp.router(
        routerConfig: CustomRouter(
          CustomRouteObserver(
            (String? route) => _pagesBloc.add(PageEvent.navigated(route)),
          ),
        ),
        theme: lightTheme,
        title: Labels.application,
        debugShowCheckedModeBanner: false,
      ),
    );
  }

  @override
  void dispose() {
    Timer.run(() async {
      await Future.wait([
        Hive.openBox<Object?>('app_data'),
      ]).then(
        (boxes) async {
          await Future.wait(boxes.map((box) async => box.close()))
              .then((_) => log('Hive boxes successfully closed', level: 800))
              .catchError(
                (Object? error, StackTrace stackTrace) => log(
                  'Hive boxes closing Failure',
                  level: 1000,
                  error: error,
                  stackTrace: stackTrace,
                ),
              );
        },
      );
    });
    super.dispose();
  }
}
