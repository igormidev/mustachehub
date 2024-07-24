import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/implementations/show_message_dialog.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/overlay_controller.dart';

class ShareTemplateIcon extends StatelessWidget {
  final String? currentTemplateId;
  const ShareTemplateIcon({
    super.key,
    required this.currentTemplateId,
  });

  @override
  Widget build(BuildContext context) {
    if (currentTemplateId == null) {
      return const SizedBox();
    }

    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: OutlinedButton.icon(
        onPressed: () {
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
                            'https://mustachehub.com/#/generateText?templateId=$currentTemplateId'),
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
        },
        label: const Text('Share template'),
        icon: const Icon(Icons.share),
      ),
    );
  }
}
