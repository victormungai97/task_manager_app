// listenables/src/value_listenable_listener.dart

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A widget whose content stays synced with a [ValueListenable].
///
/// Given a [ValueListenable<T>] and an [onChange] which processes
/// concrete values of `T`, this class will automatically register itself as a
/// listener of the [ValueListenable] and call the [onChange] with updated values
/// when the value changes.
///

class ValueListenableListener<T> extends StatefulWidget {
  /// Creates a [ValueListenableListener].
  ///
  /// The [child] is optional but is independent of the [valueListenable].
  const ValueListenableListener({
    required this.valueListenable,
    required this.onChange,
    super.key,
    this.child,
  });

  /// The [ValueListenable] whose value you depend on in order to initiate callback.
  ///
  /// This widget does not ensure that the [ValueListenable]'s value is not
  /// null, therefore your [onChange] may need to handle null values.
  final ValueListenable<T> valueListenable;

  /// Callback that initiates everytime the underlying value
  /// listened to by [valueListenable] changes
  final ValueChanged<T> onChange;

  /// Optional widget that is independent of [valueListenable] and is passed to the widget tree
  final Widget? child;

  @override
  State<ValueListenableListener<T>> createState() =>
      _ValueListenableListenerState<T>();
}

class _ValueListenableListenerState<T>
    extends State<ValueListenableListener<T>> {
  @override
  void initState() {
    super.initState();
    widget.valueListenable.addListener(_listener);
    _listener();
  }

  @override
  void didUpdateWidget(ValueListenableListener<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.valueListenable != widget.valueListenable) {
      oldWidget.valueListenable.removeListener(_listener);
      widget.valueListenable.addListener(_listener);
      _listener();
    }
  }

  @override
  void dispose() {
    widget.valueListenable.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    widget.onChange.call(widget.valueListenable.value);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox.shrink();
  }
}
