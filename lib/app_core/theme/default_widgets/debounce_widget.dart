import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter/material.dart';

class DebounceWidget extends StatefulWidget {
  final Debouncer debouncer;
  final Widget? child;
  const DebounceWidget(
    this.debouncer, {
    super.key,
    this.child,
  });

  @override
  State<DebounceWidget> createState() => _DebounceWidgetState();
}

class _DebounceWidgetState extends State<DebounceWidget> {
  final ValueNotifier<bool> isDebouncing = ValueNotifier(false);

  @override
  void dispose() {
    super.dispose();
    isDebouncing.dispose();

    widget.debouncer.addOnInitFunction(() {
      isDebouncing.value = true;
    });
    widget.debouncer.addOnEndFunction(() {
      isDebouncing.value = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: ValueListenableBuilder(
        valueListenable: isDebouncing,
        child: const SizedBox(
          height: 30,
          width: 30,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                ),
              ),
            ),
          ),
        ),
        builder: (context, value, child) {
          if (value == true) return child!;

          return widget.child ?? SizedBox.fromSize();
        },
      ),
    );
  }
}
