import 'package:flutter/material.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';

mixin BooleanPipeFormMethods<T extends StatefulWidget> on State<T> {
  BooleanPipeDto get pipeDto;

  late final ValueNotifier<bool> state;

  @override
  void initState() {
    super.initState();
    state = ValueNotifier<bool>(pipeDto.payloadValue);
  }

  @override
  void dispose() {
    super.dispose();
    state.dispose();
  }
}
