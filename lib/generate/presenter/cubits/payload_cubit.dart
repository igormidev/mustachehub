import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/data/adapters/dto_adapter.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/expected_payload_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart'; 

class PayloadCubit extends Cubit<PayloadState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final DtoAdapter _dtoAdapter;
  final ContentCubit _outputCubit;
  PayloadCubit({
    required DtoAdapter dtoAdapter,
    required ContentCubit outputCubit,
  })  : _dtoAdapter = dtoAdapter,
        _outputCubit = outputCubit,
        super(PayloadState.initial());

  Future<void> updateContent({
    required String? content,
    required ExpectedPayload expectedPayload,
    required ExpectedPayloadDto? expectedPayloadDto,
  }) async {
    if (expectedPayloadDto == null) {
      return await _addData(
        generatorData: expectedPayload,
        content: content,
      );
    }

    emit(PayloadState.withValidPayload(
      expectedPayloadDto: expectedPayloadDto,
    ));

    await Future.delayed(const Duration(milliseconds: 200));
    final formState = formKey.currentState;
    if (formState?.validate() != false) {
      emit(PayloadState.withValidPayload(
        expectedPayloadDto: expectedPayloadDto,
      ));
    } else {
      emit(PayloadState.withRequiredFieldsPendency(
        expectedPayloadDto: expectedPayloadDto,
      ));
    }

    await _outputCubit.updateContent(
      content: content,
      expectedPayload: expectedPayload,
      expectedPayloadDTO: expectedPayloadDto,
    );
  }

  Future<void> _addData({
    required String? content,
    required ExpectedPayload generatorData,
  }) async {
    final areAllVariablesEmpty = generatorData.textPipes.isEmpty &&
        generatorData.booleanPipes.isEmpty &&
        generatorData.modelPipes.isEmpty;

    if (areAllVariablesEmpty) {
      return emit(PayloadState.initial());
    }

    final ExpectedPayloadDto? prevPayloadDto = state.expectedPayloadDto;

    final updatedPipeDtos = _dtoAdapter.dtosFromTemplate(
      generatorData,
      prevPayloadDto?.textDtos,
      prevPayloadDto?.booleanDtos,
    );

    await updateContent(
      content: content,
      expectedPayload: generatorData,
      expectedPayloadDto: ExpectedPayloadDto(
        textDtos: updatedPipeDtos.textPipes,
        booleanDtos: updatedPipeDtos.boolPipes,
      ),
    );
  }

  Future<void> addTextPayloadValue({
    required String content,
    required ExpectedPayload generatorData,
    required TextPipe pipe,
    required String? value,
  }) async {
    final ExpectedPayloadDto? dataDto = state.expectedPayloadDto;

    if (dataDto == null) return;

    final List<TextPipeDto> newDtos = [...dataDto.textDtos];
    final index = newDtos.indexWhere((dto) => dto.pipe.pipeId == pipe.pipeId);
    newDtos[index] = newDtos[index].copyWith(payloadValue: value);

    await updateContent(
      content: content,
      expectedPayload: generatorData,
      expectedPayloadDto: dataDto.copyWith(
        textDtos: newDtos,
      ),
    );
  }

  void setStateToPendingRequiredFields() {
    final data = state.expectedPayloadDto;
    if (data == null) return;

    emit(PayloadState.withRequiredFieldsPendency(
      expectedPayloadDto: data,
    ));
  }

  Future<void> addBooleanPayloadValue({
    required String content,
    required ExpectedPayload expectedPayload,
    required BooleanPipe pipe,
    required bool value,
  }) async {
    final ExpectedPayloadDto? payloadDto = state.expectedPayloadDto;

    if (payloadDto == null) return;

    final List<BooleanPipeDto> newDtos = [...payloadDto.booleanDtos];
    final index = newDtos.indexWhere((dto) => dto.pipe.pipeId == pipe.pipeId);
    newDtos[index] = newDtos[index].copyWith(payloadValue: value);

    await updateContent(
      content: content,
      expectedPayload: expectedPayload,
      expectedPayloadDto: payloadDto.copyWith(
        booleanDtos: newDtos,
      ),
    );
  }
}
