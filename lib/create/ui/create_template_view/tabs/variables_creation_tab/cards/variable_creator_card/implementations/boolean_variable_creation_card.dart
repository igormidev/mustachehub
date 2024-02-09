import 'package:flutter/material.dart';
import 'package:mason/mason.dart';
import 'package:mustachehub/create/presenter/mixins/default_id_caster.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/display_pipe_card/implementations/boolean_pipe_display_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variable_creation_card.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variables_creation_card_textfield_methods.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/boolean_pipe_formfield.dart';

class BooleanVariablesCreationWidget extends StatefulWidget {
  final ListType type;
  final GlobalKey<FormState> formKey;
  final List<BooleanPipe> initialList;
  final void Function(List<BooleanPipe> pipes) retriveCreatedPipes;

  const BooleanVariablesCreationWidget({
    this.type = ListType.sliverBuildDelegate,
    required this.retriveCreatedPipes,
    required this.initialList,
    required this.formKey,
    super.key,
  });

  @override
  State<BooleanVariablesCreationWidget> createState() =>
      _BooleanVariablesCreationWidgetState();
}

class _BooleanVariablesCreationWidgetState
    extends State<BooleanVariablesCreationWidget>
    with BaseVariablesCreationCardMethods, DefaultIdCaster {
  @override
  Widget build(BuildContext context) {
    return BaseVariableCreatorCard<BooleanPipe>(
      addNewText: 'Add a new true/false variable',
      retriveCreatedPipes: widget.retriveCreatedPipes,
      initialList: widget.initialList,
      type: widget.type,
      editPipeBuilder: (pipe, saveEditFunc, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;
        return PipeFormFieldCardWrapper(
          type: widget.type,
          child: BooleanPipeFormfield(
            formKey: widget.formKey,
            nameEC: nameEC,
            descriptionEC: descriptionEC,
            onDelete: onDeleteItem,
            pipe: pipe,
            onSave: () => saveEditFunc(
              BooleanPipe(
                name: nameEC.text,
                description: descriptionEC.text,
                mustacheName: tryValidCast(nameEC.text)?.camelCase ??
                    nameEC.text.camelCase,
              ),
            ),
          ),
        );
      },
      pipeBuilder: (pipe, onEditSelec) {
        return BooleanPipeDisplayCard(
          pipe: pipe,
          onEdit: onEditSelec,
        );
      },
      generateNewPipe: () {
        return BooleanPipe.emptyPlaceholder();
      },
    );
  }
}
