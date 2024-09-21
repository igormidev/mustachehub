import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/display_pipe_card/base_pipe_display_card.dart';

class ChoicePipeDisplayCard extends StatelessWidget {
  final ChoicePipe? pipe;
  final void Function() onEdit;
  const ChoicePipeDisplayCard({super.key, this.pipe, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    if (pipe == null) return SizedBox.fromSize();

    return BasePipeDisplayCard(
      pipe: pipe,
      onEdit: onEdit,
      children: [
        const SizedBox(height: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Options:'),
            const SizedBox(height: 4),
            Theme(
              data: Theme.of(context).copyWith(
                chipTheme: ChipThemeData(
                  backgroundColor:
                      Theme.of(context).colorScheme.secondaryContainer,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final option in pipe!.options) Chip(label: Text(option))
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
