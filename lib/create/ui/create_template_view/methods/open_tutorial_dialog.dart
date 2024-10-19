import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/tutorials_dialog.dart';

mixin OpenTutorialDialog {
  void openTutorialDialog(
    BuildContext context, {
    required ETutorialSection section,
  }) {
    if (kReleaseMode) {
      FirebaseAnalytics.instance
          .logEvent(name: 'help_tutorial_opened', parameters: {
        'section': section.name,
      });
    }
    showDialog(
      context: context,
      builder: (context) {
        return TutorialsDialog(
          initialSection: section,
        );
      },
    );
  }
}
