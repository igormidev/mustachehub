import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/tutorials_dialog.dart';

mixin OpenTutorialDialog {
  void openTutorialDialog(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return const TutorialsDialog();
      },
    );
  }
}
