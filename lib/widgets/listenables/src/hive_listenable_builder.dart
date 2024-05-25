// listenables/src/hive_listenable_builder.dart

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Builds a [Widget] when given a concrete value of a [Box<T>].
///
/// If the `child` parameter provided to the [HiveListenableBuilder] is not
/// null, the same `child` widget is passed back to this [ValueWidgetBuilder]
/// and should typically be incorporated in the returned widget tree.
///
/// See also:
///
///  * [HiveListenableBuilder], a widget which invokes this builder each time
///    a [Box] changes value.
typedef BoxWidgetBuilder<T> = Widget Function(Box<T> box, Widget? child);

/// A widget whose content stays synced with a [Box].
///
/// Given a [Box<T>] and a [builder] which builds widgets from
/// concrete values of `T`, this class will automatically register itself as a
/// listener of the [Box] and call the [builder] with updated values
/// when the value changes.
///
/// ## Performance optimizations
///
/// If your [builder] function contains a subtree that does not depend on the
/// value of the [Box], it's more efficient to build that subtree
/// once instead of rebuilding it on every animation tick.
///
/// If you pass the pre-built subtree as the [child] parameter, the
/// [HiveListenableBuilder] will pass it back to your [builder] function so
/// that you can incorporate it into your build.
///
/// Using this pre-built [child] is entirely optional, but can improve
/// performance significantly in some cases and is therefore a good practice.

class HiveListenableBuilder<T> extends StatefulWidget {
  /// Creates a [HiveListenableBuilder].
  ///
  /// The [child] is optional but is good practice to use if part of the widget
  /// subtree does not depend on the value of the [box].
  const HiveListenableBuilder({
    required this.box,
    required this.builder,
    super.key,
    this.keys,
    this.child,
    this.closeOnDispose = false,
  });

  /// The [Box] whose value you depend on in order to build.
  ///
  /// This widget does not ensure that the [Box]'s value is not
  /// null, therefore your [builder] may need to handle null values.
  final Box<T> box;

  /// [Iterable] that acts a filter such that, if provided,
  /// only changes to [box]'s listenable with the specified keys notify the listeners.
  final List<String>? keys;

  /// Flag determining whether the [box] should be closed
  /// when this [HiveListenableBuilder] object is removed from the tree permanently.

  final bool closeOnDispose;

  /// A [ValueWidgetBuilder] which builds a widget depending on the
  /// [box]'s value.
  ///
  /// Can incorporate a [box] value-independent widget subtree
  /// from the [child] parameter into the returned widget tree.
  final BoxWidgetBuilder<T> builder;

  /// A [box]-independent widget which is passed back to the [builder].
  ///
  /// This argument is optional and can be null if the entire widget subtree the
  /// [builder] builds depends on the value of the [box].
  final Widget? child;

  @override
  State<HiveListenableBuilder<T>> createState() =>
      _HiveListenableBuilderState();
}

class _HiveListenableBuilderState<T> extends State<HiveListenableBuilder<T>> {
  late Box<T> _box;
  bool _boxOpened = false;

  void _valueChanged() {
    _box = widget.box;
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    _box = widget.box;
    _boxOpened = Hive.isBoxOpen(_box.name);
    if (_boxOpened) {
      _box.listenable(keys: widget.keys).addListener(_valueChanged);
    } else {
      Future.delayed(
        Duration.zero,
        () async {
          await Hive.openBox<T>(_box.name).then((value) {
            _box = value;
            _boxOpened = _box.isOpen;
            _box.listenable(keys: widget.keys).addListener(_valueChanged);
            if (mounted) setState(() {});
          });
        },
      );
    }

    super.initState();
  }

  @override
  void didUpdateWidget(HiveListenableBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.box != widget.box) {
      _box.listenable(keys: oldWidget.keys).removeListener(_valueChanged);
      if (_boxOpened) {
        oldWidget.box
            .listenable(keys: oldWidget.keys)
            .removeListener(_valueChanged);
        widget.box.listenable(keys: widget.keys).addListener(_valueChanged);
        _box = widget.box;
        _box.listenable(keys: widget.keys).addListener(_valueChanged);
      } else {
        Timer.run(() async {
          await Hive.openBox<T>(_box.name).then(
            (box) {
              _boxOpened = box.isOpen;
              _box = box;
              _box.listenable(keys: widget.keys).addListener(_valueChanged);
            },
          );
        });
      }
    }
  }

  @override
  void dispose() {
    if (_boxOpened) {
      _box.listenable(keys: widget.keys).removeListener(_valueChanged);
    }

    if (widget.closeOnDispose) widget.box.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return switch (_boxOpened) {
      true => widget.builder(_box, widget.child),
      false => const Center(child: CircularProgressIndicator()),
    };
  }
}
