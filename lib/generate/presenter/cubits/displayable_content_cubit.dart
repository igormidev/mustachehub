import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enchanted_regex/enchanted_regex.dart';
import 'package:mustachehub/create/presenter/controllers/variables_info_highlight_text_editing_controller.dart';
import 'package:mustachehub/generate/presenter/dtos/content_output_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/text_span_exibition_dto.dart';
import 'package:mustachehub/generate/presenter/states/displayable_content_state.dart';

class DisplayableContentCubit extends Cubit<DisplayableContentState> {
  DisplayableContentCubit() : super(DisplayableContentState.none());

  void setDisplayableContent(
      ContentOutputDto contentOutputDto, BuildContext context) {
    final List<TextSpanExibitionDto> allSpans = [];

    for (final contentTextDto in contentOutputDto.contents) {
      final String text = contentTextDto.content;
      final Set<String> requiredFields = {};
      final List<InlineSpan> spans = [];

      text.splitMapJoin(emptyVariableRegex, onMatch: (final Match match) {
        // splited.add(match.text);
        // requiredFields.add();
        final firstGroup = match.group(1);
        if (firstGroup != null) {
          requiredFields.add(firstGroup);
        }
        spans.add(TooltipSpan(
          message: 'Please fullfield this missing field'
              '\nand the text will be displayed here ',
          inlineSpan: TextSpan(
            text: match.text,
            style: TextStyle(
                color: Theme.of(context).colorScheme.error,
                background: Paint()
                  ..color = Theme.of(context)
                      .colorScheme
                      .error
                      .withOpacity(0.2 * 0.5)),
          ),
        ));
        return '';
      }, onNonMatch: (final String text) {
        // splited.add(text);
        spans.add(TextSpan(text: text));
        return '';
      });

      allSpans.add(TextSpanExibitionDto(
        requiredFields: requiredFields,
        content: contentTextDto,
        spans: spans,
      ));

      emit(DisplayableContentState.listOfTexts(
        spans: allSpans,
      ));
    }
  }
}

// A empty variable will apear as "[ variableName ]"
final emptyVariableRegex = RegExp(r'\[ ([ a-zA-Z0-9_]+)\ ]');
