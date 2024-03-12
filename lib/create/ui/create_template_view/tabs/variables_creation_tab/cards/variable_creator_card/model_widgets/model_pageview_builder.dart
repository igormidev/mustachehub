import 'package:mason/mason.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:mustachehub/create/presenter/mixins/default_id_caster.dart';
import 'package:mustachehub/create/presenter/state/edit_model_info_display_state.dart';
import 'package:mustachehub/create/presenter/cubits/edit_model_info_display_cubit.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variable_creation_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/display_pipe_card/implementations/model_pipe_display_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/text_variable_creation_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variables_creation_card_textfield_methods.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/boolean_variable_creation_card.dart';

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
      formKey: widget.formKey,
      initialList: widget.initialList,
      type: ListType.sliverBuildDelegate,
      editPipeBuilder: (pipe, saveEditFunc, onDeleteItem) {
        context.read<EditModelInfoDisplayCubit>().startEditingInfo(pipe);

        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;
        return PipeFormFieldCardWrapper(
          type: ListType.sliverBuildDelegate,
          child: Column(
            children: [
              BlocSelector<EditModelInfoDisplayCubit, EditModelInfoDisplayState,
                  String?>(
                selector: (state) => state.mapOrNull(
                  withDisplayText: (value) => value.displayText,
                ),
                builder: (context, displayText) {
                  if (displayText == null || displayText.isEmpty) {
                    return SizedBox.fromSize();
                  }

                  return Align(
                    alignment: Alignment.bottomLeft,
                    child: SelectableText(
                      displayText,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                },
              ),
              BlocSelector<EditModelInfoDisplayCubit, EditModelInfoDisplayState,
                  List<String>?>(
                selector: (state) => state.mapOrNull(
                  withDisplayText: (value) => value.subModelPaths,
                ),
                builder: (context, subModelPaths) {
                  if (subModelPaths == null || subModelPaths.isEmpty) {
                    return SizedBox.fromSize();
                  }

                  return Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                      Expanded(
                        child: SelectableText(
                          subModelPaths.join('/'),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(
                height: 700,
                child: ValueListenableBuilder(
                  valueListenable: pages,
                  child: ModelPipeFormfield(
                    parentId: null,
                    formKey: widget.formKey,
                    nameEC: nameEC,
                    descriptionEC: descriptionEC,
                    onDelete: onDeleteItem,
                    popOutModelFromNavigationCallback: () {
                      final newList = [...pages.value]..removeLast();
                      pages.value = newList;
                    },
                    pipe: pipe,
                    addNewModelToNavigationCallback: (child) {
                      pages.value = [...pages.value, child];
                    },
                    onSave: (
                      textPipes,
                      booleanPipes,
                      modelPipes,
                    ) {
                      final newModelPipe = ModelPipe(
                        name: nameEC.text,
                        description: descriptionEC.text,
                        mustacheName: tryValidCast(nameEC.text)?.camelCase ??
                            nameEC.text.camelCase,
                        textPipes: textPipes,
                        booleanPipes: booleanPipes,
                        modelPipes: modelPipes,
                      );
                      return saveEditFunc(newModelPipe);
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
            ],
          ),
        );
      },
      pipeBuilder: (pipe, onEditSelec) =>
          ModelPipeDisplayCard(pipe: pipe, onEdit: onEditSelec),
      generateNewPipe: () => ModelPipe.emptyPlaceholder(),
    );
  }
}

class ModelBaseCreator extends StatefulWidget {
  final String parentId;
  final ListType type;
  final GlobalKey<FormState> formKey;
  final List<ModelPipe> initialList;
  final void Function(List<ModelPipe> pipes) retriveCreatedPipes;
  final void Function(Widget child) addNewModelToNavigationCallback;
  final void Function() popOutModelFromNavigationCallback;
  const ModelBaseCreator({
    super.key,
    required this.parentId,
    required this.type,
    required this.formKey,
    required this.initialList,
    required this.retriveCreatedPipes,
    required this.addNewModelToNavigationCallback,
    required this.popOutModelFromNavigationCallback,
  });

  @override
  State<ModelBaseCreator> createState() => _ModelBaseCreatorState();
}

class _ModelBaseCreatorState extends State<ModelBaseCreator>
    with BaseVariablesCreationCardMethods, DefaultIdCaster {
  @override
  Widget build(BuildContext context) {
    final editCubit = context.read<EditModelInfoDisplayCubit>();
    return BaseVariableCreatorCard<ModelPipe>(
      addNewText: 'Add a new model variable',
      retriveCreatedPipes: widget.retriveCreatedPipes,
      initialList: widget.initialList,
      type: widget.type,
      editPipeBuilder: null,
      formKey: widget.formKey,
      onPipesChanged: (pipes) {
        editCubit.updatePipes(
          pipeId: widget.parentId,
          pipes: pipes,
        );
      },
      onEditPipeClicked: (pipe, saveEditFunc, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;

        editCubit.addNewSubModelPath(pipe.mustacheName);

        widget.addNewModelToNavigationCallback(PipeFormFieldCardWrapper(
          type: widget.type,
          child: ModelPipeFormfield(
            parentId: widget.parentId,
            formKey: widget.formKey,
            nameEC: nameEC,
            descriptionEC: descriptionEC,
            onDelete: onDeleteItem,
            pipe: pipe,
            addNewModelToNavigationCallback:
                widget.addNewModelToNavigationCallback,
            popOutModelFromNavigationCallback:
                widget.popOutModelFromNavigationCallback,
            onSave: (
              textPipes,
              booleanPipes,
              modelPipes,
            ) {
              final newModelPipe = ModelPipe(
                name: nameEC.text,
                description: descriptionEC.text,
                mustacheName: tryValidCast(nameEC.text)?.camelCase ??
                    nameEC.text.camelCase,
                textPipes: textPipes,
                booleanPipes: booleanPipes,
                modelPipes: modelPipes,
              );
              return saveEditFunc(newModelPipe);
            },
          ),
        ));
      },
      pipeBuilder: (pipe, onEditSelec) =>
          ModelPipeDisplayCard(pipe: pipe, onEdit: onEditSelec),
      generateNewPipe: () => ModelPipe.emptyPlaceholder(),
    );
  }
}

class ModelPipeFormfield extends StatefulWidget {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function(
    List<TextPipe> textPipes,
    List<BooleanPipe> booleanPipes,
    List<ModelPipe> modelPipes,
  ) onSave;
  final void Function(Widget child) addNewModelToNavigationCallback;
  final void Function() popOutModelFromNavigationCallback;
  final GlobalKey<FormState> formKey;
  final ModelPipe pipe;
  final String? parentId;

  ModelPipeFormfield({
    super.key,
    required this.nameEC,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
    required this.pipe,
    required this.parentId,
    required this.addNewModelToNavigationCallback,
    required this.popOutModelFromNavigationCallback,
  })  : textPipes = [...pipe.textPipes],
        booleanPipes = [...pipe.booleanPipes],
        modelPipes = [...pipe.modelPipes];

  final List<TextPipe> textPipes;
  final List<BooleanPipe> booleanPipes;
  final List<ModelPipe> modelPipes;

  @override
  State<ModelPipeFormfield> createState() => _ModelPipeFormfieldState();
}

class _ModelPipeFormfieldState extends State<ModelPipeFormfield> {
  final Debouncer debouncer = Debouncer(timerDuration: 1500.ms);
  @override
  void initState() {
    super.initState();

    widget.nameEC.addListener(_updateModelEdit);
  }

  void _updateModelEdit() {
    debouncer.resetDebounce(() {
      final editCubit = context.read<EditModelInfoDisplayCubit>();
      editCubit.updatePipeModeNamelWithId(
        newName: widget.nameEC.text,
        id: widget.pipe.pipeId,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    widget.nameEC.removeListener(_updateModelEdit);
  }

  @override
  Widget build(BuildContext context) {
    return PipeFormfield(
      formKey: widget.formKey,
      nameEC: widget.nameEC,
      descriptionEC: widget.descriptionEC,
      onDelete: () {
        widget.onDelete();
        widget.popOutModelFromNavigationCallback();
      },
      onSave: () {
        widget.onSave(widget.textPipes, widget.booleanPipes, widget.modelPipes);
        widget.popOutModelFromNavigationCallback();
      },
      pipe: widget.pipe,
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
          formKey: widget.formKey,
          initialList: widget.textPipes,
          retriveCreatedPipes: (pipes) {
            widget.textPipes.clear();
            widget.textPipes.addAll(pipes);
            debouncer.garanteedExecutionAfterDebounceFinished(() {
              final editCubit = context.read<EditModelInfoDisplayCubit>();
              editCubit.updatePipes(
                pipeId: widget.pipe.pipeId,
                pipes: pipes,
              );
            });
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
          formKey: widget.formKey,
          initialList: widget.booleanPipes,
          retriveCreatedPipes: (pipes) {
            widget.booleanPipes.clear();
            widget.booleanPipes.addAll(pipes);
            debouncer.garanteedExecutionAfterDebounceFinished(() {
              final editCubit = context.read<EditModelInfoDisplayCubit>();
              editCubit.updatePipes(
                pipeId: widget.pipe.pipeId,
                pipes: pipes,
              );
            });
          },
        ),
        const SizedBox(height: 6),
        const Divider(),
        Text(
          'Add other list of models variable in model:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        ModelBaseCreator(
          parentId: widget.pipe.pipeId,
          type: ListType.listviewBuilder,
          formKey: widget.formKey,
          initialList: widget.modelPipes,
          addNewModelToNavigationCallback:
              widget.addNewModelToNavigationCallback,
          popOutModelFromNavigationCallback:
              widget.popOutModelFromNavigationCallback,
          retriveCreatedPipes: (pipes) {
            widget.modelPipes.clear();
            widget.modelPipes.addAll(pipes);
            final editCubit = context.read<EditModelInfoDisplayCubit>();
            editCubit.updatePipes(
              pipeId: widget.pipe.pipeId,
              pipes: pipes,
            );
          },
        ),
      ],
    );
  }
}
