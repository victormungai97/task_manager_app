// pages/login/login.dart

import 'package:flutter/material.dart' hide Title;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:reactive_flutter_typeahead/reactive_flutter_typeahead.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:task_manager_app/blocs/blocs.dart';
import 'package:task_manager_app/constants/constants.dart';
import 'package:task_manager_app/widgets/widgets.dart';

part 'body.dart';
part 'form.dart';
part 'frame.dart';

/// Widget for screen enabling user signing in
class LoginPage extends StatelessWidget {
  /// Create an instance of ``[LoginPage]``
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(child: const _Frame(child: _Body()));
  }
}
