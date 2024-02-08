import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/theme/mixins/copy_to_clipboard_mixin.dart';

class UserInfoText extends StatelessWidget with CopyToClipboardMixin {
  final String title;
  final String value;

  const UserInfoText({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final boldText = Theme.of(context).textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
        );

    return InkWell(
      onTap: () => copyText(value, context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title:',
            style: boldText,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
            ),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.copy_rounded,
            size: 22,
          ),
        ],
      ),
    );
  }
}
