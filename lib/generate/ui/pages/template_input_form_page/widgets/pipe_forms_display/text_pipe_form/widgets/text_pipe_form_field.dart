import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/extensions/string_extension.dart';
import 'package:mustachehub/app_core/theme/default_widgets/debounce_widget.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';

class TextPipeFormField extends StatefulWidget {
  final TextPipeDto pipeDto;
  final Future<void> Function(String? text) onChangedCallback;

  const TextPipeFormField({
    super.key,
    required this.pipeDto,
    required this.onChangedCallback,
  });

  @override
  State<TextPipeFormField> createState() => _TextPipeFormFieldState();
}

class _TextPipeFormFieldState extends State<TextPipeFormField>
    with ValidatorsMixins {
  final Debouncer debouncer =
      Debouncer(timerDuration: const Duration(milliseconds: 1200));

  bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.pipeDto.payloadValue,
      decoration: InputDecoration(
        labelText: widget.pipeDto.pipe.name.capitalized,
        hintText: widget.pipeDto.pipe.description.capitalized,
        fillColor:
            isEmpty ? Theme.of(context).colorScheme.tertiaryContainer : null,
        suffixIcon: DebounceWidget(
          debouncer,
          child: Tooltip(
            message: widget.pipeDto.pipe.description,
            child: const Icon(Icons.info),
          ),
        ),
      ),
      autovalidateMode: AutovalidateMode.always,
      validator: (String? value) {
        if (widget.pipeDto.pipe.isRequired) return isNotEmpty(value);

        return null;
      },
      onChanged: (value) {
        setState(() {
          isEmpty = value.isEmpty;
        });
        debouncer.resetDebounce(() async {
          final text = value.isEmpty == true ? null : value;
          widget.onChangedCallback(text);
        });
      },
    );
  }
}
