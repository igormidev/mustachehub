import 'package:flutter/material.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';

class ChoicePipeChooseFormField extends StatelessWidget {
  final String? choosedPipeName;
  final ChoicePipeDto choicePipeDto;
  final Future<void> Function(String value) onChangedCallback;

  const ChoicePipeChooseFormField({
    super.key,
    required this.choosedPipeName,
    required this.choicePipeDto,
    required this.onChangedCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          choicePipeDto.pipe.name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          choicePipeDto.pipe.description,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 4),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: choicePipeDto.pipe.options.map((String pipeText) {
            return ChoiceChip(
              label: Text(pipeText),
              selected: pipeText == choosedPipeName,
              onSelected: (_) {
                onChangedCallback(pipeText);
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
