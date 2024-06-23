import 'package:flutter/material.dart';
import 'package:mason/mason.dart';
import 'package:media_query_core/media_query_core.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/mixins/default_id_caster.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/display_pipe_card/implementations/text_pipe_display_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variable_creation_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variables_creation_card_textfield_methods.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/text_pipe_formfield.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variables_creation_card_is_required_methods.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/widgets/option_widgets/text_pipe_options.dart';

class TextVariablesCreationWidget extends StatefulWidget {
  final ListType type;
  final GlobalKey<FormState> formKey;
  final void Function(List<TextPipe> pipes) retriveCreatedPipes;
  final List<TextPipe> initialList;

  const TextVariablesCreationWidget({
    this.type = ListType.sliverBuildDelegate,
    required this.retriveCreatedPipes,
    required this.initialList,
    required this.formKey,
    super.key,
  });

  @override
  State<TextVariablesCreationWidget> createState() =>
      _TextVariablesCreationWidgetState();
}

class _TextVariablesCreationWidgetState
    extends State<TextVariablesCreationWidget>
    with BaseVariablesCreationCardMethods, IsRequiredMethods, DefaultIdCaster {
  @override
  Widget build(BuildContext context) {
    return BaseVariableCreatorCard<TextPipe>(
      addNewText: 'Add a new text variable',
      retriveCreatedPipes: widget.retriveCreatedPipes,
      initialList: widget.initialList,
      type: widget.type,
      formKey: widget.formKey,
      editPipeBuilder: (pipe, saveEditFunc, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;

        return StatefullBuilder(
          initState: () {
            isRequired.value = pipe.isRequired;
          },
          builder: (context) {
            return PipeFormFieldCardWrapper(
              type: widget.type,
              child: TextPipeFormfield(
                formKey: widget.formKey,
                nameEC: nameEC,
                descriptionEC: descriptionEC,
                onDelete: onDeleteItem,
                pipe: pipe,
                optionWidget: TextPipeOptions(
                  isRequired: isRequired,
                ),
                onSave: () => saveEditFunc(
                  TextPipe(
                    name: nameEC.text,
                    description: descriptionEC.text,
                    mustacheName: tryValidCast(nameEC.text)?.camelCase ??
                        nameEC.text.camelCase,
                    isRequired: isRequired.value,
                  ),
                  () {},
                ),
              ),
            );
          },
        );
      },
      pipeBuilder: (pipe, onEditSelec) {
        return TextPipeDisplayCard(
          pipe: pipe,
          onEdit: onEditSelec,
        );
      },
      generateNewPipe: () {
        return TextPipe.emptyPlaceholder();
      },
    );
  }
}
