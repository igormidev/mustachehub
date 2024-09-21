final Map<ETutorialSection, List<ETutorialSection>> mapHierarchy = {
  ETutorialSection.howToUseGuide: [
    ETutorialSection.usageFlow,
  ],
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
  ETutorialSection.whatIsTheTemplateText: [
    ETutorialSection.creatingMultipleTemplateText,
    ETutorialSection.howWillBreakLineCheckboxesWork,
  ],
  ETutorialSection.otherInfosResume: [
    ETutorialSection.usingAutoComplete,
    ETutorialSection.whatIsAVariable,
    ETutorialSection.whatIsCamelCaseFormat,
    ETutorialSection.whatIsAVariableScope,
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
  whatIsCamelCaseFormat,
  whatIsAVariableScope,
  ;

  String get title {
    return switch (this) {
      // General info/section
      ETutorialSection.howToUseGuide => 'How to use guide',
      ETutorialSection.usageFlow => 'Usage flow',

      // Text variable and its sub-sections
      ETutorialSection.textVariableResume => 'Text variable',
      ETutorialSection.textUseCaseExample => 'Example',
      ETutorialSection.textCreatingVariable => 'Creating',
      ETutorialSection.textUsingInTemplateText => 'Usage',

      // Conditional variable and its sub-sections
      ETutorialSection.conditionalVariableResume => 'Conditional variable',
      ETutorialSection.conditionalUseCaseExample => 'Example',
      ETutorialSection.conditionalCreatingVariable => 'Creating',
      ETutorialSection.conditionalUsingInTemplateText => 'Usage',

      // Choice variable and its sub-sections
      ETutorialSection.choiceVariableResume => 'Choices variable',
      ETutorialSection.choiceCreatingVariable => 'Example',
      ETutorialSection.choiceAsTextUsingInTemplateText => 'Text usage',
      ETutorialSection.choiceAsConditinalUsingInTemplateText =>
        'Conditional usage',

      // List of item variable and its sub-sections
      ETutorialSection.listOfItemVariableResume => 'List of item variable',
      ETutorialSection.listOfItemUseCaseExample => 'Example',
      ETutorialSection.listOfItemCreatingVariable => 'Creating',
      ETutorialSection.listOfItemUsingInTemplateText => 'Usage',
      ETutorialSection.recursiveSubModelsBrefExplain => 'Sub-items',

      // Text template explanation and its sub-sections
      ETutorialSection.whatIsTheTemplateText => 'Template text',
      ETutorialSection.creatingMultipleTemplateText => 'Multiple texts',
      ETutorialSection.howWillBreakLineCheckboxesWork => 'Break line',

      // Other info/section
      ETutorialSection.otherInfosResume => 'Other guides',
      ETutorialSection.usingAutoComplete => 'Auto-complete',
      ETutorialSection.whatIsAVariable => 'What is an variable',
      ETutorialSection.whatIsAVariableScope => 'Variable scope',
      ETutorialSection.whatIsCamelCaseFormat => 'Camel case format',
    };
  }

  int get scrollIndex {
    return index;
  }
}
