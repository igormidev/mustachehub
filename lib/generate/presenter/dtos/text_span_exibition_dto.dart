import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'text_span_exibition_dto.freezed.dart';

@freezed
abstract class TextSpanExibitionDto with _$TextSpanExibitionDto {
  factory TextSpanExibitionDto({
    required ContentTextSectionInput content,
    required Set<String> requiredFields,
    required List<InlineSpan> spans,
  }) = _TextSpanExibitionDto;
}
