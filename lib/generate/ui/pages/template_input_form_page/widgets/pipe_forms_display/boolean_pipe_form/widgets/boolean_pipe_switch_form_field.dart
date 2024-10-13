import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/extensions/string_extension.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/boolean_pipe_form/boolean_pipe_form_methods.dart';

class BooleanPipeSwitchFormField extends StatefulWidget {
  final BooleanPipeDto pipeDto;
  final Future<void> Function(bool value) onChangedCallback;
  const BooleanPipeSwitchFormField({
    super.key,
    required this.pipeDto,
    required this.onChangedCallback,
  });

  @override
  State<BooleanPipeSwitchFormField> createState() => _BoleanSwitchState();
}

class _BoleanSwitchState extends State<BooleanPipeSwitchFormField>
    with BooleanPipeFormMethods {
  @override
  BooleanPipeDto get pipeDto => widget.pipeDto;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ColoredBox(
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 8),
            Tooltip(
              message: widget.pipeDto.pipe.description.capitalized,
              child: Icon(
                Icons.info,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(width: 4),
            InkWell(
              onTap: () {
                final choosedValue = !state.value;
                state.value = choosedValue;
                widget.onChangedCallback(choosedValue);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(widget.pipeDto.pipe.name.capitalized),
                  const SizedBox(width: 4),
                  IgnorePointer(
                    child: Checkbox(
                      activeColor: Theme.of(context).colorScheme.primary,
                      value: state.value,
                      onChanged: (_) {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
