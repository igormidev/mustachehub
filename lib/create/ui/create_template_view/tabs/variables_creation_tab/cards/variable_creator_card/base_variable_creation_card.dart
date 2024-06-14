import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/widgets/add_new_dotted_button.dart';
import 'package:media_query_core/reactiveness/is_item_selected_value_listenable.dart';

enum ListType { listviewBuilder, sliverBuildDelegate }

class BaseVariableCreatorCard<T extends Pipe> extends StatefulWidget {
  final String addNewText;

  final Widget Function(
    T pipe,
    void Function(
      T pipe,
      void Function() afterSaveFunction,
    ) saveEditFunc,
    void Function() onDeleteItem,
  )? editPipeBuilder;

  final void Function(
    T pipe,
    void Function(
      T pipe,
      void Function() afterSaveFunction,
    ) saveEditFunc,
    void Function() onDeleteItem,
  )? onEditPipeClicked;

  final Widget Function(
    T pipe,
    void Function() onEditSelec,
  ) pipeBuilder;
  final T Function() generateNewPipe;

  final ListType type;

  final List<T> initialList;

  final void Function(List<T> pipes) retriveCreatedPipes;

  final GlobalKey<FormState> formKey;

  final void Function(List<T> pipes)? onPipesChanged;

  const BaseVariableCreatorCard({
    super.key,
    required this.addNewText,
    required this.editPipeBuilder,
    this.onEditPipeClicked,
    required this.pipeBuilder,
    required this.generateNewPipe,
    required this.type,
    required this.initialList,
    required this.retriveCreatedPipes,
    required this.formKey,
    this.onPipesChanged,
  });

  @override
  State<BaseVariableCreatorCard<T>> createState() =>
      _BaseVariableCreatorCardState<T>();
}

class _BaseVariableCreatorCardState<T extends Pipe>
    extends State<BaseVariableCreatorCard<T>> {
  late final ValueNotifier<List<T>> pipesStateVN;
  final ValueNotifier<int?> selectedIndex = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    pipesStateVN = ValueNotifier(widget.initialList);

    selectedIndex.addListener(_onSelectedNewIndex);
    if (widget.onPipesChanged != null) {
      pipesStateVN.addListener(_listChangedCallback);
    }
  }

  @override
  void dispose() {
    super.dispose();

    selectedIndex.removeListener(_onSelectedNewIndex);
    pipesStateVN.removeListener(_listChangedCallback);
  }

  void _listChangedCallback() {
    widget.onPipesChanged?.call(pipesStateVN.value);
  }

  void _onSelectedNewIndex() {
    if (widget.onEditPipeClicked == null) return;
    final innerSelectedIndex = selectedIndex.value;
    if (innerSelectedIndex == null) return;
    final pipe = pipesStateVN.value[innerSelectedIndex];

    void listUpdate(
      T pipe,
      void Function() afterSaveFunction,
    ) {
      final innerIndex = selectedIndex.value;
      if (innerIndex == null) return;

      if (pipe is ModelPipe) {
        final areAllPipesEmpty = pipe.isEmpty();

        if (areAllPipesEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'You need to add at least one variable to this model',
              ),
            ),
          );
          return;
        }
      }

      final newList = [...pipesStateVN.value];
      newList[innerIndex] = pipe;
      pipesStateVN.value = newList;
      selectedIndex.value = null;
      widget.retriveCreatedPipes(newList);
      afterSaveFunction();
    }

    void onDeleteItem() {
      final innerIndex = selectedIndex.value;
      if (innerIndex == null) return;

      final newList = [...pipesStateVN.value];
      newList.removeAt(innerIndex);
      pipesStateVN.value = newList;
      selectedIndex.value = null;
      return widget.retriveCreatedPipes(newList);
    }

    widget.onEditPipeClicked?.call(
      pipe,
      listUpdate,
      onDeleteItem,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: pipesStateVN,
      builder: (context, pipes, child) {
        Widget widgetBuilder(int index) {
          if (pipes.length == index) {
            if (selectedIndex.value != null) return SizedBox.fromSize();

            return AddNewButton(
              onTap: () {
                final isValid = widget.formKey.currentState?.validate() ?? true;
                if (isValid == false) return;

                final lenght = pipesStateVN.value.length;
                pipesStateVN.value = [
                  ...pipesStateVN.value,
                  widget.generateNewPipe()
                ];
                selectedIndex.value = lenght;
              },
              tooltip: widget.addNewText,
            );
          }

          void onEditSelec() {
            selectedIndex.value = index;
          }

          return IsSelectedValueListenable(
            index: index,
            valueListenable: selectedIndex,
            builder: (context, isSelected) {
              final pipe = pipes[index];

              if (isSelected) {
                void listUpdate(
                  T pipe,
                  void Function() afterSaveFunction,
                ) {
                  final innerIndex = selectedIndex.value;
                  if (innerIndex == null) return;

                  if (pipe is ModelPipe) {
                    final areAllPipesEmpty = pipe.isEmpty();

                    if (areAllPipesEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'You need to add at least one variable to this model',
                          ),
                        ),
                      );
                      return;
                    }
                  }

                  final newList = [...pipesStateVN.value];
                  newList[innerIndex] = pipe;
                  pipesStateVN.value = newList;
                  selectedIndex.value = null;
                  widget.retriveCreatedPipes(newList);
                  afterSaveFunction();
                }

                void onDeleteItem() {
                  final innerIndex = selectedIndex.value;
                  if (innerIndex == null) return;

                  final newList = [...pipesStateVN.value];
                  newList.removeAt(innerIndex);
                  pipesStateVN.value = newList;
                  selectedIndex.value = null;
                  return widget.retriveCreatedPipes(newList);
                }

                if (widget.onEditPipeClicked != null) {
                  return SizedBox.fromSize();
                } else {
                  return widget.editPipeBuilder?.call(
                        pipe,
                        listUpdate,
                        onDeleteItem,
                      ) ??
                      SizedBox.fromSize();
                }
              }

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: widget.pipeBuilder(pipe, onEditSelec),
              );
            },
          );
        }

        return switch (widget.type) {
          ListType.listviewBuilder => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: pipes.length + 1,
              itemBuilder: (context, index) {
                return widgetBuilder(index);
              },
            ),
          ListType.sliverBuildDelegate => SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return widgetBuilder(index);
              }, childCount: pipes.length + 1),
            ),
        };
      },
    );
  }
}
