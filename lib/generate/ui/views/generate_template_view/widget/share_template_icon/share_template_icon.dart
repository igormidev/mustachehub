import 'package:flutter/material.dart';
import 'package:mustachehub/generate/ui/views/generate_template_view/widget/share_template_icon/share_template_icon_method.dart';

class ShareTemplateIcon extends StatelessWidget with ShareTemplateIconMethod {
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
      child: Center(
        child: SizedBox(
          width: 180,
          height: 40,
          child: OutlinedButton.icon(
            onPressed: () =>
                shareTemplateIconMethod(context, currentTemplateId!),
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            label: const Text('Share template'),
            icon: const Icon(Icons.share),
          ),
        ),
      ),
    );
  }
}
