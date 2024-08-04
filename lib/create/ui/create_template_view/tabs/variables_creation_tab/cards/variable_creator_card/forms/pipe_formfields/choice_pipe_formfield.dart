// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/widgets/add_new_dotted_button.dart';

class ChoicePipeFormfield extends StatefulWidget {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function(List<String> options) onSave;
  final GlobalKey<FormState> formKey;
  final ChoicePipe pipe;

  const ChoicePipeFormfield({
    super.key,
    required this.nameEC,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
    required this.pipe,
  });

  @override
  State<ChoicePipeFormfield> createState() => _ChoicePipeFormfieldState();
}

class _ChoicePipeFormfieldState extends State<ChoicePipeFormfield>
    with ValidatorsMixins {
  late final List<_FocusTextPayload> _textPayload;

  @override
  void initState() {
    super.initState();
    _textPayload = widget.pipe.options
        .map((option) => _FocusTextPayload(
              focusNode: FocusNode(),
              controller: TextEditingController(text: option),
            ))
        .toList();
  }

  @override
  void dispose() {
    for (final controller in _textPayload) {
      controller.focusNode.dispose();
      controller.controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PipeFormfield(
      formKey: widget.formKey,
      nameEC: widget.nameEC,
      descriptionEC: widget.descriptionEC,
      onDelete: widget.onDelete,
      onSave: () {
        widget.onSave(_textPayload
            .map((textPayload) => textPayload.controller.text)
            .toList());
      },
      pipe: widget.pipe,
      children: [
        Text(
          'Choices',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'The list of options the user will have to choose from',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        ..._textPayload.mapper(
          (textPayload, isFirst, isLast, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                focusNode: textPayload.focusNode,
                controller: textPayload.controller,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                  isDense: true,
                  hintText: 'Option ${index + 1}',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surface,
                  counterText: '',
                  suffixIcon: _textPayload.length <= 2
                      ? null
                      : Transform.scale(
                          scale: 0.8,
                          child: CircleAvatar(
                            backgroundColor:
                                Theme.of(context).colorScheme.errorContainer,
                            child: InkWell(
                              onTap: () {
                                for (final element in _textPayload) {
                                  element.focusNode.unfocus();
                                }
                                _textPayload.removeAt(index);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.delete,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onErrorContainer,
                              ),
                            ),
                          ),
                        ),
                ),
                maxLength: 30,
                validator: isNotEmpty,
              ),
            );
          },
        ),
        AddNewButton(
          height: 40,
          iconSize: 20,
          onTap: () {
            _textPayload.add(
              _FocusTextPayload(
                focusNode: FocusNode()..requestFocus(),
                controller: TextEditingController(),
              ),
            );
            setState(() {});
          },
          tooltip: 'Add new option',
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class _FocusTextPayload {
  final FocusNode focusNode;
  final TextEditingController controller;
  const _FocusTextPayload({
    required this.focusNode,
    required this.controller,
  });
}
