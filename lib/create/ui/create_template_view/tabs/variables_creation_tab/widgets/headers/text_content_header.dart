import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:mustachehub/create/presenter/cubits/fields_text_size_cubit.dart';
import 'package:mustachehub/create/ui/create_template_view/widgets/display_tutorial_button.dart';
import 'package:url_launcher/url_launcher.dart';

class TextContentHeader extends StatelessWidget {
  const TextContentHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeBloc = context.read<FieldsTextSizeCubit>();

    final style = Theme.of(context).textTheme.bodyMedium;
    return CustomHeader(
      headerTitle: 'Template text',
      subtractOnPressed: () {
        sizeBloc.decreaseSizeTestString();
      },
      addOnPressed: () {
        sizeBloc.increaseSizeTestString();
      },
      subtitleWidget: RichText(
        text: TextSpan(
          style: style,
          children: [
            const TextSpan(
              text: 'Type below the text in ',
            ),
            TextSpan(
              text: 'mustache 5 format',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrl(
                    Uri.parse('https://mustache.github.io/mustache.5.html'),
                  );
                },
              style: style?.copyWith(
                decoration: TextDecoration.underline,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const TextSpan(
              text: ' which will be used to generate the text with the use'
                  'of the variables that the user will fill. When typing '
                  'this text you can use the previously created variables.',
            )
          ],
        ),
      ),
      children: const [
        // TODO(igor): Implement DebounceWidget in father widgets
        // DebounceWidget(debouncer),
        DisplayTutorialButton(
            selectedSection: ETutorialSection.creatingMultipleTemplateText),
      ],
    );
  }
}
