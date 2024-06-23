import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/display_pipe_card/base_pipe_display_card.dart';

class BooleanPipeDisplayCard extends StatelessWidget {
  final BooleanPipe? pipe;
  final void Function() onEdit;

  const BooleanPipeDisplayCard({
    super.key,
    required this.pipe,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    if (pipe == null) return SizedBox.fromSize();

    return BasePipeDisplayCard(
      pipe: pipe,
      onEdit: onEdit,
    );
  }
}
