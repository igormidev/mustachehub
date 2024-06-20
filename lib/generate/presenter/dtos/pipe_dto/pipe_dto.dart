import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/model_pipe_form/model_pipe_form.dart';
part 'pipe_dtos_impl/text_pipe_dto.dart';
part 'pipe_dtos_impl/boolean_pipe_dto.dart';
part 'pipe_dtos_impl/model_pipe_dto.dart';

sealed class PipeDTO<P extends Pipe, V> extends Equatable {
  abstract final P pipe;
  abstract final V? payloadValue;

  PipeDTO<P, V> copyWith({
    required V payloadValue,
  });
}
