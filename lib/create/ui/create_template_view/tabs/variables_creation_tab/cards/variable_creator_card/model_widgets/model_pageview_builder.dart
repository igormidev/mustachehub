import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:flutter/material.dart';
import 'package:mason/mason.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/mixins/default_id_caster.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/display_pipe_card/implementations/model_pipe_display_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variable_creation_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variables_creation_card_textfield_methods.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/boolean_variable_creation_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/text_variable_creation_card.dart';

class ModelPageviewBuilder extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final List<ModelPipe> initialList;
  final void Function(List<ModelPipe> pipes) retriveCreatedPipes;

  const ModelPageviewBuilder({
    required this.retriveCreatedPipes,
    required this.initialList,
    required this.formKey,
    super.key,
  });

  @override
  State<ModelPageviewBuilder> createState() => _ModelPageviewBuilderState();
}

class _ModelPageviewBuilderState extends State<ModelPageviewBuilder>
    with BaseVariablesCreationCardMethods, DefaultIdCaster {
  final ValueNotifier<List<Widget>> pages = ValueNotifier([]);
  @override
  void dispose() {
    pages.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseVariableCreatorCard<ModelPipe>(
      addNewText: 'Add a new model variable',
      retriveCreatedPipes: widget.retriveCreatedPipes,
      initialList: widget.initialList,
      type: ListType.sliverBuildDelegate,
      editPipeBuilder: (pipe, saveEditFunc, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;
        return PipeFormFieldCardWrapper(
          type: ListType.sliverBuildDelegate,
          child: SizedBox(
            height: 800,
            child: ValueListenableBuilder(
              valueListenable: pages,
              child: ModelPipeFormfield(
                formKey: widget.formKey,
                nameEC: nameEC,
                descriptionEC: descriptionEC,
                onDelete: onDeleteItem,
                pipe: pipe,
                addNewModelToNavigationCallback: (child) {
                  pages.value = [...pages.value, child];
                },
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
              builder: (context, children, child) {
                return Navigator(
                  onPopPage: (route, result) {
                    onDeleteItem();
                    final newList = [...pages.value]..removeLast();
                    pages.value = newList;
                    setState(() {});
                    return true;
                  },
                  pages: [
                    MaterialPage(
                      key: const ValueKey('root'),
                      child: child!,
                    ),
                    ...children.mapper((value, isFirst, isLast, index) {
                      return MaterialPage(
                        key: ValueKey(index),
                        child: value,
                      );
                    }),
                  ],
                );
              },
            ),
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

class ModelBaseCreator extends StatefulWidget {
  final ListType type;
  final GlobalKey<FormState> formKey;
  final List<ModelPipe> initialList;
  final void Function(List<ModelPipe> pipes) retriveCreatedPipes;
  final void Function(Widget child) addNewModelToNavigationCallback;
  const ModelBaseCreator({
    super.key,
    required this.type,
    required this.formKey,
    required this.initialList,
    required this.retriveCreatedPipes,
    required this.addNewModelToNavigationCallback,
  });

  @override
  State<ModelBaseCreator> createState() => _ModelBaseCreatorState();
}

class _ModelBaseCreatorState extends State<ModelBaseCreator>
    with BaseVariablesCreationCardMethods, DefaultIdCaster {
  @override
  Widget build(BuildContext context) {
    return BaseVariableCreatorCard<ModelPipe>(
      addNewText: 'Add a new model variable',
      retriveCreatedPipes: widget.retriveCreatedPipes,
      initialList: widget.initialList,
      type: widget.type,
      editPipeBuilder: null,
      onEditPipeClicked: (pipe, saveEditFunc, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;
        widget.addNewModelToNavigationCallback(PipeFormFieldCardWrapper(
          type: widget.type,
          child: ModelPipeFormfield(
            formKey: widget.formKey,
            nameEC: nameEC,
            descriptionEC: descriptionEC,
            onDelete: onDeleteItem,
            pipe: pipe,
            addNewModelToNavigationCallback:
                widget.addNewModelToNavigationCallback,
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
        ));
      },
      pipeBuilder: (pipe, onEditSelec) {
        return ModelPipeDisplayCard(pipe: pipe, onEdit: onEditSelec);
      },
      generateNewPipe: () => ModelPipe.emptyPlaceholder(),
    );
  }
}

class ModelPipeFormfield extends StatelessWidget {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function(
    List<TextPipe> textPipes,
    List<BooleanPipe> booleanPipes,
    List<ModelPipe> modelPipes,
  ) onSave;
  final void Function(Widget child) addNewModelToNavigationCallback;
  final GlobalKey<FormState> formKey;
  final ModelPipe pipe;

  ModelPipeFormfield({
    super.key,
    required this.nameEC,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
    required this.pipe,
    required this.addNewModelToNavigationCallback,
  })  : textPipes = [...pipe.textPipes],
        booleanPipes = [...pipe.booleanPipes],
        modelPipes = [...pipe.modelPipes];

  final List<TextPipe> textPipes;
  final List<BooleanPipe> booleanPipes;
  final List<ModelPipe> modelPipes;

  @override
  Widget build(BuildContext context) {
    return PipeFormfield(
      formKey: formKey,
      nameEC: nameEC,
      descriptionEC: descriptionEC,
      onDelete: onDelete,
      onSave: () => onSave(textPipes, booleanPipes, modelPipes),
      pipe: pipe,
      children: [
        Text(
          'Model variables:',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          'Fill bellow the variables that will be used in the model',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Divider(),
        ),
        Text(
          'Add texts variables in model:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        TextVariablesCreationWidget(
          type: ListType.listviewBuilder,
          formKey: formKey,
          initialList: textPipes,
          retriveCreatedPipes: (pipes) {
            textPipes.clear();
            textPipes.addAll(pipes);
          },
        ),
        const SizedBox(height: 6),
        const Divider(),
        Text(
          'Add boolean variables in model:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        BooleanVariablesCreationWidget(
          type: ListType.listviewBuilder,
          formKey: formKey,
          initialList: booleanPipes,
          retriveCreatedPipes: (pipes) {
            booleanPipes.clear();
            booleanPipes.addAll(pipes);
          },
        ),
        const SizedBox(height: 6),
        const Divider(),
        Text(
          'Add other list of models variable in model:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        ModelBaseCreator(
          type: ListType.listviewBuilder,
          formKey: formKey,
          initialList: modelPipes,
          addNewModelToNavigationCallback: addNewModelToNavigationCallback,
          retriveCreatedPipes: (pipes) {
            modelPipes.clear();
            modelPipes.addAll(pipes);
          },
        ),
        // AddNewButton(
        //   onTap: () {
        //     final isFormKeyValid = formKey.currentState?.validate() ?? false;
        //     if (!isFormKeyValid) return;

        //     addNewModelToNavigationCallback(ModelBaseCreator(
        //       type: ListType.listviewBuilder,
        //       formKey: formKey,
        //       initialList: modelPipes,
        //       addNewModelToNavigationCallback: addNewModelToNavigationCallback,
        //       retriveCreatedPipes: (pipes) {
        //         modelPipes.clear();
        //         modelPipes.addAll(pipes);
        //       },
        //     ));
        //   },
        //   text: 'Add a new model variable',
        // )
      ],
    );
  }
}
