import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'content_output_dto.freezed.dart';

@freezed
abstract class ContentOutputDto with _$ContentOutputDto {
  factory ContentOutputDto.string({
    required List<ContentTextSectionInput> contents,
  }) = _ContentOutputDtoString;
}
