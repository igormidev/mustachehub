import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/extensions/string_extension.dart';
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 8,
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
            ),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12.0,
                    top: 4,
                    bottom: 8,
                    right: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        choicePipeDto.pipe.name.capitalized,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        choicePipeDto.pipe.description.capitalized,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 4),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children:
                            choicePipeDto.pipe.options.map((String pipeText) {
                          return ChoiceChip(
                            label: Text(pipeText.capitalized),
                            selected: pipeText == choosedPipeName,
                            onSelected: (_) {
                              onChangedCallback(pipeText);
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
