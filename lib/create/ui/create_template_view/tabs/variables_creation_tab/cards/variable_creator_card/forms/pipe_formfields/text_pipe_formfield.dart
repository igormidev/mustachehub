import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/base_pipe_formfield.dart';

class TextPipeFormfield extends StatelessWidget {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function() onSave;
  final GlobalKey<FormState> formKey;
  final TextPipe pipe;
  final Widget optionWidget;

  const TextPipeFormfield({
    super.key,
    required this.nameEC,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
    required this.pipe,
    required this.optionWidget,
  });

  @override
  Widget build(BuildContext context) {
    return PipeFormfield(
      formKey: formKey,
      nameEC: nameEC,
      descriptionEC: descriptionEC,
      onDelete: onDelete,
      onSave: onSave,
      pipe: pipe,
      // optionWidget: optionWidget,
    );
  }
}
