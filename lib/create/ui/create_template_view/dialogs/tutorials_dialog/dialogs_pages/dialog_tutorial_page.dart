import 'package:flutter/material.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/choices_guides/choice_as_conditional_using_in_template_text_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/choices_guides/choice_as_text_using_in_template_text_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/choices_guides/choice_variable_resume_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/choices_guides/create_choice_variable_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/conditional_guides/conditional_usecase_example_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/conditional_guides/conditional_using_in_template_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/conditional_guides/conditional_variable_resume_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/conditional_guides/create_conditional_variable_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/how_to_use_guides/general_system_usage_flow_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/how_to_use_guides/how_to_use_general_info_header_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/list_of_items_guides/create_list_of_items_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/list_of_items_guides/list_of_item_usecase_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/list_of_items_guides/list_of_item_using_in_template_text_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/list_of_items_guides/recursive_sub_models_bref_explain.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/other_topics_guides/other_topics.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/other_topics_guides/using_auto_complete_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/other_topics_guides/what_is_a_scope.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/other_topics_guides/what_is_a_variable_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/other_topics_guides/what_is_camel_case.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/template_text/template_break_line_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/template_text/template_section_explanation_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/template_text/template_text_resume_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/texts_guides/create_text_variable_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/texts_guides/text_usecase_example_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/texts_guides/text_using_in_template_guide.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/guides/texts_guides/text_variables_resume_guide.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DialogTutorialPage extends StatelessWidget {
  final int initialScrollIndex;
  final ItemScrollController scrollController;
  final ScrollOffsetListener scrollOffsetListener;
  final ItemPositionsListener itemPositionsListener;
  const DialogTutorialPage({
    super.key,
    required this.initialScrollIndex,
    required this.scrollController,
    required this.scrollOffsetListener,
    required this.itemPositionsListener,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [
      const SizedBox(height: 20),
      ...ETutorialSection.values.map(
        (ETutorialSection section) {
          return switch (section) {
            ETutorialSection.howToUseGuide =>
              const HowToUseGeneralInfoHeaderGuide(),
            ETutorialSection.usageFlow => const GeneralSystemUsageFlowGuide(),
            ETutorialSection.textVariableResume =>
              const TextVariablesResumeGuide(),
            ETutorialSection.textUseCaseExample =>
              const TextUsecaseExampleGuide(),
            ETutorialSection.textCreatingVariable =>
              const CreateTextVariableGuide(),
            ETutorialSection.textUsingInTemplateText =>
              const TextUsingInTemplateGuide(),
            ETutorialSection.conditionalVariableResume =>
              const ConditionalVariableResumeGuide(),
            ETutorialSection.conditionalUseCaseExample =>
              const ConditionalUsecaseExampleGuide(),
            ETutorialSection.conditionalCreatingVariable =>
              const CreateConditionalVariableGuide(),
            ETutorialSection.conditionalUsingInTemplateText =>
              const ConditionalUsingInTemplateGuide(),
            ETutorialSection.choiceVariableResume =>
              const ChoiceVariableResumeGuide(),
            ETutorialSection.choiceCreatingVariable =>
              const CreateChoiceVariableGuide(),
            ETutorialSection.choiceAsTextUsingInTemplateText =>
              const ChoiceAsTextUsingInTemplateTextGuide(),
            ETutorialSection.choiceAsConditinalUsingInTemplateText =>
              const ChoiceAsConditionalUsingInTemplateTextGuide(),
            ETutorialSection.listOfItemVariableResume =>
              const CreateListOfItemsGuide(),
            ETutorialSection.listOfItemUseCaseExample =>
              const ListOfItemUsecaseGuide(),
            ETutorialSection.listOfItemCreatingVariable =>
              const CreateListOfItemsGuide(),
            ETutorialSection.listOfItemUsingInTemplateText =>
              const ListOfItemUsingInTemplateTextGuide(),
            ETutorialSection.recursiveSubModelsBrefExplain =>
              const RecursiveSubModelsBrefExplain(),
            ETutorialSection.whatIsTheTemplateText =>
              const TemplateTextResumeGuide(),
            ETutorialSection.creatingMultipleTemplateText =>
              const TemplateSectionExplanationGuide(),
            ETutorialSection.howWillBreakLineCheckboxesWork =>
              const TemplateBreakLineGuide(),
            ETutorialSection.otherInfosResume => const OtherTopics(),
            ETutorialSection.usingAutoComplete =>
              const UsingAutoCompleteGuide(),
            ETutorialSection.whatIsAVariable => const WhatIsAVariableGuide(),
            ETutorialSection.whatIsAVariableScope => const WhatIsAScope(),
            ETutorialSection.whatIsCamelCaseFormat => const WhatIsCamelCase(),
          };
        },
      ),
      Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop();
          },
          label: const Text('Close '),
          icon: const Icon(Icons.close),
        ),
      ),
      const SizedBox(height: 36),
    ];

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        width: 550,
        child: ScrollablePositionedList.builder(
          itemScrollController: scrollController,
          initialScrollIndex: initialScrollIndex,
          scrollOffsetListener: scrollOffsetListener,
          itemPositionsListener: itemPositionsListener,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: children.length,
          itemBuilder: (context, index) {
            return children[index];
          },
        ),
      ),
    );
  }
}
