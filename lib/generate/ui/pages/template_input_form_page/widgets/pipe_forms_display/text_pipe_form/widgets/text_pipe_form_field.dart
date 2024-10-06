import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/debounce_widget.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';

class TextPipeFormField extends StatefulWidget {
  final bool isRequired;
  final TextPipeDto pipeDto;
  final Future<void> Function(String? text) onChangedCallback;

  const TextPipeFormField({
    super.key,
    required this.isRequired,
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
    final displayEmptyIndicator = (widget.isRequired && isEmpty);
    final Brightness brightness = Theme.of(context).brightness;

    return TextFormField(
      initialValue: widget.pipeDto.payloadValue,
      decoration: InputDecoration(
        hintText: "Type here...",
        // hintStyle: const TextStyle(
        // color: Theme.of(context).colorScheme.onError,
        // ),
        fillColor: displayEmptyIndicator
            ? Theme.of(context)
                .colorScheme
                .errorContainer
                .withOpacity(brightness == Brightness.light ? 1 : 0.2)
            : Theme.of(context).colorScheme.surfaceContainerLow,
        suffixIcon: DebounceWidget(
          debouncer,
          child: Tooltip(
            message: widget.pipeDto.pipe.description,
            child: const Icon(Icons.info),
          ),
        ),
      ),
      autovalidateMode: displayEmptyIndicator ? AutovalidateMode.always : null,
      validator: (String? value) {
        if (displayEmptyIndicator) return isNotEmpty(value);

        return null;
      },
      onChanged: (value) {
        if (isEmpty != value.isEmpty) {
          setState(() {
            isEmpty = value.isEmpty;
          });
        }
        debouncer.resetDebounce(() async {
          final text = value.isEmpty == true ? null : value;
          widget.onChangedCallback(text);
        });
      },
    );
  }
}
