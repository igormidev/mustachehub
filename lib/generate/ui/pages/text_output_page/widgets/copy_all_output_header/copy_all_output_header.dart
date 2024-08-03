import 'package:flutter/material.dart';
import 'package:media_query_core/media_query_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/app_core/theme/mixins/copy_to_clipboard_mixin.dart';
import 'package:mustachehub/generate/ui/pages/text_output_page/widgets/copy_all_output_header/copy_all_output_header_methods.dart';

class CopyAllOutputHeader extends StatelessWidget
    with CopyToClipboardMixin, CopyAllOutputHeaderMethods {
  const CopyAllOutputHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      headerTitle: 'Output text',
      headerSubtitle: 'Bellow is the generated text '
          'after fullfiling the required variables'
          'They are separed by sections. So you can '
          'copy all of them at once or just one section',
      actions: [
        context.whenSizeIsSmallerThen(
          size: ScreenSize.x900,
          child: CustomActionHeader(
            tooltip: 'Copy all output to clipboard',
            iconData: Icons.copy,
            onPressed: () {
              copyAllOutputToClipboard(context);
            },
          ),
        ),
      ],
      children: [
        context.whenSizeIsBiggerThen(
              size: ScreenSize.x900,
              child: Tooltip(
                message: 'Copy all output sections to clipboard',
                child: SizedBox(
                  width: 160,
                  height: 40,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      copyAllOutputToClipboard(context);
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    label: const Text('Copy all'),
                    icon: const Icon(Icons.copy),
                  ),
                ),
              ),
            ) ??
            const SizedBox(),
      ],
    );
  }
}
