import 'package:flutter/material.dart';
import 'package:mason/mason.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/mixins/default_id_caster.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/display_pipe_card/implementations/choice_pipe_display_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variable_creation_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variables_creation_card_textfield_methods.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/choice_pipe_formfield.dart';

class ChoiceVariableCreationCard extends StatefulWidget {
  final ListType type;
  final GlobalKey<FormState> formKey;
  final List<ChoicePipe> initialList;
  final void Function(List<ChoicePipe> pipes) retriveCreatedPipes;

  const ChoiceVariableCreationCard({
    this.type = ListType.sliverBuildDelegate,
    super.key,
    required this.formKey,
    required this.initialList,
    required this.retriveCreatedPipes,
  });

  @override
  State<ChoiceVariableCreationCard> createState() =>
      _ChoiceVariableCreationCardState();
}

class _ChoiceVariableCreationCardState extends State<ChoiceVariableCreationCard>
    with BaseVariablesCreationCardMethods, DefaultIdCaster {
  @override
  Widget build(BuildContext context) {
    return BaseVariableCreatorCard<ChoicePipe>(
      addNewText: 'Add a new choice variable',
      retriveCreatedPipes: widget.retriveCreatedPipes,
      initialList: widget.initialList,
      type: widget.type,
      formKey: widget.formKey,
      editPipeBuilder: (pipe, saveEditFunc, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;

        return PipeFormFieldCardWrapper(
          type: widget.type,
          child: ChoicePipeFormfield(
            formKey: widget.formKey,
            nameEC: nameEC,
            descriptionEC: descriptionEC,
            onDelete: onDeleteItem,
            pipe: pipe,
            onSave: (List<String> options) => saveEditFunc(
              ChoicePipe(
                name: nameEC.text,
                description: descriptionEC.text,
                mustacheName: tryValidCast(nameEC.text)?.camelCase ??
                    nameEC.text.camelCase,
                options: options,
                pipeId: pipe.pipeId,
              ),
              () {},
            ),
          ),
        );
      },
      pipeBuilder: (pipe, onEditSelec) {
        return ChoicePipeDisplayCard(
          pipe: pipe,
          onEdit: onEditSelec,
        );
      },
      generateNewPipe: () {
        return ChoicePipe.emptyPlaceholder();
      },
    );
  }
}
