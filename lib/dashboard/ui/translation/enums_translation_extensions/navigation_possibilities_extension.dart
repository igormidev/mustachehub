import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';

extension NavigationPossibilitiesExtension on ENavigationPossibilities {
  String fullName() {
    return switch (this) {
      ENavigationPossibilities.collection => 'Collection',
      ENavigationPossibilities.generateText => 'Generate text',
      ENavigationPossibilities.createMustache => 'Create mustache',
      ENavigationPossibilities.account => 'My account',
      ENavigationPossibilities.auth => 'Log in',
      ENavigationPossibilities.settings => 'Configuration',
      ENavigationPossibilities.becamePremium => 'Became Premium',
    };
  }

  String shortName() {
    return switch (this) {
      ENavigationPossibilities.collection => 'Collection',
      ENavigationPossibilities.generateText => 'Generate',
      ENavigationPossibilities.createMustache => 'Create',
      ENavigationPossibilities.account => 'Account',
      ENavigationPossibilities.auth => 'Log in',
      ENavigationPossibilities.settings => 'Configs',
      ENavigationPossibilities.becamePremium => 'Premium',
    };
  }
}
