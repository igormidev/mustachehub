import 'package:flutter/material.dart';
import 'package:mason/mason.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/mixins/default_id_caster.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/display_pipe_card/implementations/model_pipe_display_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variable_creation_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variables_creation_card_textfield_methods.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/model_pipe_formfield.dart';

class ModelVariablesCreationWidget extends StatefulWidget {
  final ListType type;
  final GlobalKey<FormState> formKey;
  final List<ModelPipe> initialList;
  final double maxWidth;
  final void Function(List<ModelPipe> pipes) retriveCreatedPipes;

  const ModelVariablesCreationWidget({
    this.type = ListType.sliverBuildDelegate,
    required this.retriveCreatedPipes,
    required this.initialList,
    required this.maxWidth,
    required this.formKey,
    super.key,
  });

  @override
  State<ModelVariablesCreationWidget> createState() =>
      _ModelVariablesCreationWidgetState();
}

class _ModelVariablesCreationWidgetState
    extends State<ModelVariablesCreationWidget>
    with BaseVariablesCreationCardMethods, DefaultIdCaster {
  @override
  Widget build(BuildContext context) {
    return BaseVariableCreatorCard<ModelPipe>(
      addNewText: 'Add a new model variable',
      retriveCreatedPipes: widget.retriveCreatedPipes,
      initialList: widget.initialList,
      type: widget.type,
      editPipeBuilder: (pipe, saveEditFunc, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;
        return PipeFormFieldCardWrapper(
          type: widget.type,
          child: ModelPipeFormfield(
            formKey: widget.formKey,
            nameEC: nameEC,
            descriptionEC: descriptionEC,
            onDelete: onDeleteItem,
            pipe: pipe,
            maxWidth: widget.maxWidth,
            onSave: (
              textPipes,
              booleanPipes,
              modelPipes,
            ) {
              return saveEditFunc(
                ModelPipe(
                  name: nameEC.text,
                  description: descriptionEC.text,
                  mustacheName: tryValidCast(nameEC.text)?.camelCase ??
                      nameEC.text.camelCase,
                  textPipes: textPipes,
                  booleanPipes: booleanPipes,
                  modelPipes: modelPipes,
                ),
              );
            },
          ),
        );
      },
      pipeBuilder: (pipe, onEditSelec) {
        return ModelPipeDisplayCard(pipe: pipe, onEdit: onEditSelec);
      },
      generateNewPipe: () => ModelPipe.emptyPlaceholder(),
    );
  }
}
