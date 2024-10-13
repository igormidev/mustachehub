import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:mustachehub/create/presenter/cubits/fields_text_size_cubit.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/open_tutorial_dialog.dart';
import 'package:mustachehub/create/ui/create_template_view/widgets/display_tutorial_button.dart';

class TextContentHeader extends StatelessWidget with OpenTutorialDialog {
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
          children: const [
            TextSpan(
              text: 'The template text is the main part of the template, '
                  'it is where you will write the base text '
                  'that the whoevers is using the template will see/copy. '
                  'In that template text, you can use the variables '
                  'you created to make the text dynamic. ',
            ),
            // TextSpan(
            //   text: 'Click here',
            //   recognizer: TapGestureRecognizer()
            //     ..onTap = () {
            //       openTutorialDialog(
            //         context,
            //         section: ETutorialSection.creatingMultipleTemplateText,
            //       );
            //     },
            //   style: style?.copyWith(
            //     decoration: TextDecoration.underline,
            //     color: Theme.of(context).colorScheme.primary,
            //   ),
            // ),
            // const TextSpan(
            //   text: ' to read more.',
            // )
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
