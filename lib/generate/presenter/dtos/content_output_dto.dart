import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_output_dto.freezed.dart';

@freezed
abstract class ContentOutputDto with _$ContentOutputDto {
  factory ContentOutputDto.string({
    @Default(['']) List<String> contents,
  }) = _ContentOutputDtoString;
}
