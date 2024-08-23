final Map<ETutorialSection, List<ETutorialSection>> mapHierarchy = {
  ETutorialSection.howToUseGuide: [],
  ETutorialSection.textVariableResume: [
    ETutorialSection.textUseCaseExample,
    ETutorialSection.textCreatingVariable,
    ETutorialSection.textUsingInTemplateText,
  ],
  ETutorialSection.conditionalVariableResume: [
    ETutorialSection.conditionalUseCaseExample,
    ETutorialSection.conditionalCreatingVariable,
    ETutorialSection.conditionalUsingInTemplateText,
  ],
  ETutorialSection.choiceVariableResume: [
    ETutorialSection.choiceCreatingVariable,
    ETutorialSection.choiceAsTextUsingInTemplateText,
    ETutorialSection.choiceAsConditinalUsingInTemplateText,
  ],
  ETutorialSection.listOfItemVariableResume: [
    ETutorialSection.listOfItemUseCaseExample,
    ETutorialSection.listOfItemCreatingVariable,
    ETutorialSection.listOfItemUsingInTemplateText,
    ETutorialSection.recursiveSubModelsBrefExplain,
  ],
  ETutorialSection.otherInfosResume: [
    ETutorialSection.usingAutoComplete,
    ETutorialSection.whatIsAVariable,
    ETutorialSection.whatIsTheTemplateText,
    ETutorialSection.whatIsAVariableScope,
    ETutorialSection.whatIsCamelCaseFormat,
  ],
};

enum ETutorialSection {
  // General info/section
  howToUseGuide,
  usageFlow,

  // Text variable and its sub-sections
  textVariableResume,
  textUseCaseExample,
  textCreatingVariable,
  textUsingInTemplateText,

  // Conditional variable and its sub-sections
  conditionalVariableResume,
  conditionalUseCaseExample,
  conditionalCreatingVariable,
  conditionalUsingInTemplateText,

  // Choice variable and its sub-sections
  choiceVariableResume,
  choiceCreatingVariable,
  choiceAsTextUsingInTemplateText,
  choiceAsConditinalUsingInTemplateText,

  // List of item variable and its sub-sections
  listOfItemVariableResume,
  listOfItemUseCaseExample,
  listOfItemCreatingVariable,
  listOfItemUsingInTemplateText,
  recursiveSubModelsBrefExplain,

  // Template text and its sub-sections
  whatIsTheTemplateText,
  creatingMultipleTemplateText,
  howWillBreakLineCheckboxesWork,

  // Other info/section
  otherInfosResume,
  usingAutoComplete,
  whatIsAVariable,
  whatIsAVariableScope,
  whatIsCamelCaseFormat,
  ;

  String get title {
    return switch (this) {
      // General info/section
      ETutorialSection.howToUseGuide => 'How to use guide',
      ETutorialSection.usageFlow => 'Usage flow',

      // Text variable and its sub-sections
      ETutorialSection.textVariableResume => 'Text variable',
      ETutorialSection.textUseCaseExample => 'Text use case example',
      ETutorialSection.textCreatingVariable => 'Creating variable',
      ETutorialSection.textUsingInTemplateText => 'Using in template text',

      // Conditional variable and its sub-sections
      ETutorialSection.conditionalVariableResume => 'Conditional variable',
      ETutorialSection.conditionalUseCaseExample => '',
      ETutorialSection.conditionalCreatingVariable => '',
      ETutorialSection.conditionalUsingInTemplateText => '',

      // Choice variable and its sub-sections
      ETutorialSection.choiceVariableResume => 'Choices variable',
      ETutorialSection.choiceCreatingVariable => 'How to create',
      ETutorialSection.choiceAsTextUsingInTemplateText => 'Text usage',
      ETutorialSection.choiceAsConditinalUsingInTemplateText =>
        'Conditional usage',

      // List of item variable and its sub-sections
      ETutorialSection.listOfItemVariableResume => 'List of item variable',
      ETutorialSection.listOfItemUseCaseExample => '',
      ETutorialSection.listOfItemCreatingVariable => '',
      ETutorialSection.listOfItemUsingInTemplateText => '',
      ETutorialSection.recursiveSubModelsBrefExplain => '',

      // Other info/section
      ETutorialSection.otherInfosResume => '',
      ETutorialSection.usingAutoComplete => '',
      ETutorialSection.whatIsAVariable => '',
      ETutorialSection.whatIsTheTemplateText => '',
      ETutorialSection.whatIsAVariableScope => '',
      ETutorialSection.whatIsCamelCaseFormat => '',
      // TODO: Handle this case.
      ETutorialSection.creatingMultipleTemplateText =>
        throw UnimplementedError(),
      // TODO: Handle this case.
      ETutorialSection.howWillBreakLineCheckboxesWork =>
        throw UnimplementedError(),
    };
  }

  int get scrollIndex {
    return index;
    // return switch (this) {
    //   ETutorialSection.howToUseGuide => 0,
    //   ETutorialSection.textVariable => 5,
    //   ETutorialSection.conditionalVariable => 10,
    //   ETutorialSection.listOfItemVariable => 18,
    // };
  }
}
