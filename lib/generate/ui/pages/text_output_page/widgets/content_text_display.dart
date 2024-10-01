import 'package:enchanted_regex/enchanted_regex.dart';
import 'package:flutter/material.dart';
import 'package:mustachehub/create/presenter/controllers/variables_info_highlight_text_editing_controller.dart';

class ContentTextDisplay extends StatelessWidget {
  final String text;
  const ContentTextDisplay({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    // Lets display highlighted variables that are empty as error color

    final List<String> splited = [];

    text.splitMapJoin(emptyVariableRegex, onMatch: (final Match match) {
      splited.add(match.text);
      return '';
    }, onNonMatch: (final String text) {
      splited.add(text);
      return '';
    });

    return SelectableText.rich(
      TextSpan(
        children: [
          for (final part in splited)
            if (emptyVariableRegex.hasMatch(part))
              TooltipSpan(
                message:
                    'Please fullfield this missing field\nand the text will be displayed here ',
                inlineSpan: TextSpan(
                  text: part,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                      background: Paint()
                        ..color = Theme.of(context)
                            .colorScheme
                            .error
                            .withOpacity(0.2 * 0.5)),
                ),
              )
            else
              TextSpan(
                text: part,
              ),
        ],
      ),
    );
  }
}

// A empty variable will apear as "[ variableName ]"
final emptyVariableRegex = RegExp(r'\[ ([a-zA-Z0-9_]+)\ ]');
