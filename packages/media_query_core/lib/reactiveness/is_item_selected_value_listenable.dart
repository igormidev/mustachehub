import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class IsSelectedValueListenable extends StatefulWidget {
  const IsSelectedValueListenable({
    super.key,
    required this.index,
    required this.valueListenable,
    required this.builder,
  });

  final int index;
  final ValueListenable<int?> valueListenable;

  final Widget Function(BuildContext context, bool isSelected) builder;

  @override
  State<IsSelectedValueListenable> createState() =>
      _IsSelectedValueListenableState();
}

class _IsSelectedValueListenableState extends State<IsSelectedValueListenable> {
  @override
  void initState() {
    super.initState();
    widget.valueListenable.addListener(_valueChanged);
  }

  @override
  void didUpdateWidget(IsSelectedValueListenable oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.valueListenable.value != widget.valueListenable.value) {
      oldWidget.valueListenable.removeListener(_valueChanged);

      widget.valueListenable.addListener(_valueChanged);
    }
  }

  @override
  void dispose() {
    widget.valueListenable.removeListener(_valueChanged);
    super.dispose();
  }

  bool hadBeenUpdated = false;
  void _valueChanged() {
    final hadMatch = widget.valueListenable.value == widget.index;
    final isOutdated = hadMatch == false && hadBeenUpdated == true;

    if (hadMatch || isOutdated) {
      if (isOutdated == false) {
        hadBeenUpdated = true;
      } else {
        hadBeenUpdated = false;
      }
      setState(() {});
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      widget.valueListenable.value == widget.index,
    );
  }
}
