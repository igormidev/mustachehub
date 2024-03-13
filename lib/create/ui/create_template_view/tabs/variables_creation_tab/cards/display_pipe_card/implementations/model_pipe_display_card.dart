import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

    return BasePipeDisplayCard(
      pipe: pipe,
      onEdit: onEdit,
      children: [
        Text(
          _toDisplayAdapter.toDisplayText(
            title: pipe!.mustacheName,
            textPipes: pipe!.textPipes,
            booleanPipes: pipe!.booleanPipes,
            modelPipes: pipe!.modelPipes,
          ),
          style: GoogleFonts.lato().copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
