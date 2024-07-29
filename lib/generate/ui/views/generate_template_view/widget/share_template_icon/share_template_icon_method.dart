import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/implementations/show_message_dialog.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/overlay_controller.dart';

mixin ShareTemplateIconMethod {
  void shareTemplateIconMethod(
    BuildContext context,
    String currentTemplateId,
  ) {
    showMessageDialog(
      context,
      title: 'Template link copied ✅',
      description: 'Now, you can share the link'
          ' of the template with any one',
      actions: [
        DialogAction(
          text: 'Ok',
          onPressed: () async {
            await Clipboard.setData(
              ClipboardData(
                text:
                    'https://mustachehub.com/#/generateText?templateId=$currentTemplateId',
              ),
            );
            if (!context.mounted) return;
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Link copied to clipboard'),
              ),
            );
          },
        ),
      ],
    );
  }
}
