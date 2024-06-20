import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/debounce_widget.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';

class TextPipeFormField extends StatelessWidget with ValidatorsMixins {
  final TextPipeDto pipeDto;
  final Future<void> Function(String? text) onChangedCallback;
  final Debouncer debouncer =
      Debouncer(timerDuration: const Duration(milliseconds: 1200));

  TextPipeFormField({
    super.key,
    required this.pipeDto,
    required this.onChangedCallback,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: pipeDto.payloadValue,
      decoration: InputDecoration(
        labelText: pipeDto.pipe.name,
        hintText: pipeDto.pipe.description,
        suffixIcon: DebounceWidget(
          debouncer,
          child: Tooltip(
            message: pipeDto.pipe.description,
            child: const Icon(Icons.info),
          ),
        ),
      ),
      autovalidateMode: AutovalidateMode.always,
      validator: (String? value) {
        if (pipeDto.pipe.isRequired) return isNotEmpty(value);

        return null;
      },
      onChanged: (value) {
        debouncer.resetDebounce(() async {
          final text = value.isEmpty == true ? null : value;
          onChangedCallback(text);
        });
      },
    );
  }
}
