import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/theme/mixins/copy_to_clipboard_mixin.dart';
import 'package:mustachehub/generate/presenter/dtos/text_span_exibition_dto.dart';

class ContentTextSectionInputTextfield extends StatelessWidget
    with CopyToClipboardMixin {
  final TextSpanExibitionDto exibitionDto;
  final bool isSingle;
  const ContentTextSectionInputTextfield(
    this.exibitionDto, {
    super.key,
    this.isSingle = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isSingle) ...[
            Row(
              children: [
                Expanded(
                  child: Text(
                    ' ${exibitionDto.content.title}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                Tooltip(
                  message: 'Copy section text',
                  child: InkWell(
                    onTap: () {
                      copyText(exibitionDto.content.content, context);

                      if (kReleaseMode) {
                        FirebaseAnalytics.instance
                            .logEvent(name: 'output_section_copied');
                      }
                    },
                    // borderRadius: BorderRadius.circular(16),
                    child: const Icon(Icons.copy, size: 20),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
            const SizedBox(height: 8),
          ],
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.onInverseSurface,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child:
                  SelectableText.rich(TextSpan(children: exibitionDto.spans)),
            ),
          ),
        ],
      ),
    );
  }
}
