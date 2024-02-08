import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/overlay_controller.dart';

void showErrorDialog(
  BuildContext context,
  String message, [
  String? description,
]) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      title: message,
      description: description,
      actions: const [],
    ),
  );
}

void showWarningDialog(
  BuildContext context,
  String message, [
  String? description,
]) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      title: message,
      description: description,
      actions: const [],
    ),
  );
}
