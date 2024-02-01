import 'package:flutter/material.dart';

class BooleanToggleWrapper extends StatefulWidget {
  final Widget Function(
    BuildContext context,
    bool value,
    void Function() toggleFunction,
  )? builderWithoutChild;

  final Widget Function(
    BuildContext context,
    bool value,
    void Function() toggleFunction,
    Widget child,
  )? builderWithChild;

  final bool initialValue;
  final Widget? _child;

  const BooleanToggleWrapper({
    super.key,
    this.initialValue = false,
    required Widget Function(
      BuildContext context,
      bool value,
      void Function() toggleFunction,
    ) builder,
  })  : _child = null,
        builderWithoutChild = builder,
        builderWithChild = null;

  const BooleanToggleWrapper.withChild({
    super.key,
    required Widget child,
    this.initialValue = false,
    required Widget Function(
      BuildContext context,
      bool value,
      void Function() toggleFunction,
      Widget child,
    ) builder,
  })  : builderWithChild = builder,
        builderWithoutChild = null,
        _child = child;

  @override
  State<BooleanToggleWrapper> createState() => _BooleanToggleWrapperState();
}

class _BooleanToggleWrapperState extends State<BooleanToggleWrapper> {
  late final ValueNotifier<bool> _isActivated;

  @override
  void initState() {
    super.initState();
    _isActivated = ValueNotifier<bool>(widget.initialValue);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.builderWithoutChild != null) {
      return ValueListenableBuilder<bool>(
        valueListenable: _isActivated,
        builder: (context, value, _) {
          return widget.builderWithoutChild!(
            context,
            value,
            () {
              _isActivated.value = !_isActivated.value;
            },
          );
        },
      );
    } else {
      return ValueListenableBuilder<bool>(
        valueListenable: _isActivated,
        child: widget._child!,
        builder: (context, value, child) {
          return widget.builderWithChild!(
            context,
            value,
            () {
              _isActivated.value = !_isActivated.value;
            },
            child!,
          );
        },
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _isActivated.dispose();
  }
}
