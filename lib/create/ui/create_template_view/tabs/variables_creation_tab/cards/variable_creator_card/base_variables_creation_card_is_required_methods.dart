import 'package:flutter/material.dart';

mixin IsRequiredMethods<T extends StatefulWidget> on State<T> {
  final ValueNotifier<bool> isRequired = ValueNotifier<bool>(false);

  @override
  void dispose() {
    super.dispose();
    isRequired.dispose();
  }
}
