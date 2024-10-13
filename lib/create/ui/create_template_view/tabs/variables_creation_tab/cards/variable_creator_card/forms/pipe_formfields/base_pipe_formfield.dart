import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/extensions/string_extension.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/mixins/default_id_caster.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variable_creation_card.dart';

class PipeFormFieldCardWrapper extends StatelessWidget {
  final Widget child;
  final ListType type;
  const PipeFormFieldCardWrapper({
    super.key,
    required this.child,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      ListType.listviewBuilder => child,
      ListType.sliverBuildDelegate => Card(
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
        ),
    };
  }
}

class PipeFormfield extends StatefulWidget {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function() onSave;
  final List<Widget> children;
  final GlobalKey<FormState> formKey;
  final Widget? optionWidget;
  final Pipe pipe;
  final bool isScrollable;

  const PipeFormfield({
    super.key,
    required this.nameEC,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
    required this.pipe,
    this.isScrollable = false,
    this.optionWidget,
    this.children = const [],
  });

  @override
  State<PipeFormfield> createState() => _PipeFormfieldState();
}

class _PipeFormfieldState extends State<PipeFormfield>
    with ValidatorsMixins, DefaultIdCaster {
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode descriptionFocusNode = FocusNode();

  @override
  void dispose() {
    nameFocusNode.dispose();
    descriptionFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widgets = <Widget>[
      const SizedBox(height: 8),
      TextFormField(
        controller: widget.nameEC,
        decoration: InputDecoration(
          label: const Text('Name'),
          filled: true,
          fillColor: Theme.of(context).colorScheme.onPrimary,
          counterText: '',
        ),
        validator: (val) => combineValidators([
          () => isNotEmpty(val),
          () {
            final value = tryValidCast(val);
            if (value == null) {
              return 'Not valid name.';
            }

            return null;
          },
          () {
            if (val == null) return 'Invalid text';

            if (_containsValuesAlready(val)) {
              return 'Already exists a variable with this name';
            }

            return null;
          },
        ]),
        textInputAction: TextInputAction.next,
        autofocus: true,
        maxLength: 30,
        focusNode: nameFocusNode..requestFocus(),
        onEditingComplete: () {
          nameFocusNode.unfocus();
          descriptionFocusNode.requestFocus();
        },
        onFieldSubmitted: (v) {
          nameFocusNode.unfocus();
          descriptionFocusNode.requestFocus();
          FocusScope.of(context).requestFocus(descriptionFocusNode);
        },
      ),
      const SizedBox(height: 8),
      TextFormField(
        focusNode: descriptionFocusNode,
        controller: widget.descriptionEC,
        decoration: InputDecoration(
          label: const Text('Description'),
          filled: true,
          fillColor: Theme.of(context).colorScheme.onPrimary,
          counterText: '',
        ),
        minLines: 1,
        maxLines: 3,
        maxLength: 300,
        validator: isNotEmpty,
      ),
      const SizedBox(height: 8),
      ...widget.children,
      const SizedBox(height: 8),
      Row(
        children: [
          if (widget.optionWidget != null) widget.optionWidget!,
          const Spacer(),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.errorContainer,
              foregroundColor: Theme.of(context).colorScheme.onErrorContainer,
            ),
            onPressed: widget.onDelete,
            icon: const Icon(Icons.delete),
            label: const Text('Delete'),
          ),
          const SizedBox(width: 8),
          ElevatedButton.icon(
            onPressed: () {
              if (widget.formKey.currentState?.validate() == true) {
                widget.onSave();
              }
            },
            icon: const Icon(Icons.save),
            label: const Text('Save'),
          ),
        ],
      ),
    ];

    if (widget.isScrollable == false) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      );
    } else {
      return ListView(
        children: widgets,
      );
    }
  }

  bool _containsValuesAlready(
    // VariablesState state,
    String value,
  ) {
    final state = context.read<VariablesCubit>().state;
    for (final Pipe pipe in <Pipe>[
      ...state.textPipes,
      ...state.booleanPipes,
      ...state.choicePipes,
      ...state.modelPipes,
    ]) {
      final isDiferentPipe = widget.pipe.pipeId != pipe.pipeId;
      final isSameMusName =
          pipe.name == value || pipe.mustacheName == value.toMustacheName;
      if (isSameMusName && isDiferentPipe) {
        return true;
      }

      if (pipe is ModelPipe) {
        final didNameExist = _doesNameExist(<Pipe>[
          ...pipe.textPipes,
          ...pipe.booleanPipes,
          ...pipe.choicePipes,
          ...pipe.modelPipes,
        ], value);
        if (didNameExist == true) {
          return true;
        }
      }
    }
    return false;
  }

  bool _doesNameExist(
    List<Pipe> pipes,
    String value,
  ) {
    for (final pipe in pipes) {
      final isDiferentPipe = widget.pipe.pipeId != pipe.pipeId;
      final isSameName =
          pipe.name == value || pipe.mustacheName == value.toMustacheName;
      if (isSameName && isDiferentPipe) {
        return true;
      }

      if (pipe is ModelPipe) {
        final didNameExist = _doesNameExist(<Pipe>[
          ...pipe.textPipes,
          ...pipe.booleanPipes,
          ...pipe.choicePipes,
          ...pipe.modelPipes,
        ], value);

        final isDiferentPipe = widget.pipe.pipeId != pipe.pipeId;
        if (didNameExist == true && isDiferentPipe) {
          return true;
        }
      }
    }

    return false;
  }
}
