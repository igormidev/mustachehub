import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/adapters/token_identifier_text_display_adapter.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/display_pipe_card/base_pipe_display_card.dart';

class ModelPipeDisplayCard extends StatelessWidget {
  final TokenIdentifierTextDisplayAdapter _toDisplayAdapter =
      TokenIdentifierTextDisplayAdapter();

  final ModelPipe? pipe;
  final void Function() onEdit;

  ModelPipeDisplayCard({
    super.key,
    required this.pipe,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    if (pipe == null) return SizedBox.fromSize();

    final text = _toDisplayAdapter.toDisplayText(
      title: pipe!.name,
      textPipes: pipe!.textPipes,
      booleanPipes: pipe!.booleanPipes,
      modelPipes: pipe!.modelPipes,
    );

    return BasePipeDisplayCard(
      pipe: pipe,
      onEdit: onEdit,
      children: [
        SelectableText(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'MenloRegular',
            fontFamilyFallback: <String>["Courier"],
          ),
        ),
      ],
    );
  }
}
