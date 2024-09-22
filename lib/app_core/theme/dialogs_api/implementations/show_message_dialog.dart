import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/overlay_controller.dart';

void showMessageDialog(
  BuildContext context, {
  required String title,
  String? description,
  Widget? icon,
  List<DialogAction>? actions,
}) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      icon: icon,
      title: title,
      description: description,
      actions: actions ?? [],
    ),
  );
}
