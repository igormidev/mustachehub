import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/boolean_pipe_form/boolean_pipe_form_methods.dart';

class BooleanPipeForm extends StatelessWidget {
  final String content;
  final ExpectedPayload expectedPayload;
  const BooleanPipeForm({
    super.key,
    required this.content,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PayloadCubit>();

    return BlocBuilder<PayloadCubit, PayloadState>(
      buildWhen: (prev, curr) {
        final prevDtos = prev.expectedPayloadDto?.booleanDtos;
        final currDtos = curr.expectedPayloadDto?.booleanDtos;
        if (prevDtos == null || currDtos == null) return true;
        return listEquals(prevDtos, currDtos) == false;
      },
      builder: (context, state) {
        final pipes =
            state.expectedPayloadDto?.booleanDtos ?? <BooleanPipeDto>[];

        if (pipes.isEmpty) return SizedBox.fromSize();

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeader(headerTitle: 'Boolean variables'),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: pipes.map((BooleanPipeDto pipe) {
                return BoleanSwitch(
                  pipeDto: pipe,
                  onChangedCallback: (value) async {
                    return await bloc.addBooleanPayloadValue(
                      content: content,
                      expectedPayload: expectedPayload,
                      pipe: pipe.pipe,
                      value: value,
                    );
                  },
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}

class BoleanSwitch extends StatefulWidget {
  final BooleanPipeDto pipeDto;
  final Future<void> Function(bool value) onChangedCallback;
  const BoleanSwitch({
    super.key,
    required this.pipeDto,
    required this.onChangedCallback,
  });

  @override
  State<BoleanSwitch> createState() => _BoleanSwitchState();
}

class _BoleanSwitchState extends State<BoleanSwitch>
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
              message: widget.pipeDto.pipe.description,
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
                  Text(widget.pipeDto.pipe.name),
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
