enum ETutorialSection {
  howToUseGuide,
  textVariable,
  conditionalVariable,
  listOfItemVariable;

  String get title {
    return switch (this) {
      ETutorialSection.howToUseGuide => 'How to use guide',
      ETutorialSection.textVariable => 'Text variable',
      ETutorialSection.conditionalVariable => 'Conditional variable',
      ETutorialSection.listOfItemVariable => 'List of item variable',
    };
  }

  int get scrollIndex {
    return switch (this) {
      ETutorialSection.howToUseGuide => 0,
      ETutorialSection.textVariable => 5,
      ETutorialSection.conditionalVariable => 10,
      ETutorialSection.listOfItemVariable => 18,
    };
  }
}
