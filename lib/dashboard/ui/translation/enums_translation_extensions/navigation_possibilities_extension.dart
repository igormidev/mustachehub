import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';

extension NavigationPossibilitiesExtension
    on EDashboardNavigationPossibilities {
  String fullName() {
    return switch (this) {
      EDashboardNavigationPossibilities.collection => 'Collection',
      EDashboardNavigationPossibilities.generateText => 'Generate text',
      EDashboardNavigationPossibilities.createMustache => 'Create mustache',
      EDashboardNavigationPossibilities.account => 'My account',
      EDashboardNavigationPossibilities.auth => 'Log in',
      EDashboardNavigationPossibilities.settings => 'Configuration',
      EDashboardNavigationPossibilities.becamePremium => 'Became Premium',
    };
  }

  String shortName() {
    return switch (this) {
      EDashboardNavigationPossibilities.collection => 'Collection',
      EDashboardNavigationPossibilities.generateText => 'Generate',
      EDashboardNavigationPossibilities.createMustache => 'Create',
      EDashboardNavigationPossibilities.account => 'Account',
      EDashboardNavigationPossibilities.auth => 'Log in',
      EDashboardNavigationPossibilities.settings => 'Configs',
      EDashboardNavigationPossibilities.becamePremium => 'Premium',
    };
  }
}
